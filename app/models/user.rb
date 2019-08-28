require 'json'
require 'open-uri'

class User < ApplicationRecord
  include PgSearch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  belongs_to :company
  belongs_to :team
  belongs_to :hierarchy_rank
  geocoded_by :location
  after_validation :geocode
  devise :omniauthable, omniauth_providers: [:slack]

  def self.from_slack(auth)
    where(slack_id: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.username = auth.info.name
      user.password = Devise.friendly_token[0, 20]
    end
  end

  pg_search_scope :search_by_team,
  against: [:team],
  using: {
    tsearch: { prefix: true }
  }
  mount_uploader :avatar, AvatarUploader
  mount_uploader :contract_pdf, FilespdfUploader
  mount_uploader :upload_contrat, FilespdfUploader
  mount_uploader :rules_reglementation_pdf, FilespdfUploader
  mount_uploader :upload_internal_rules, FilespdfUploader

  def progress
    score = 0
    self.avatar.url.nil? ? score : score += 1
    self.hobby_1 == ("" || nil) ? score : score += 1
    self.hobby_2 == ("" || nil) ? score : score += 1
    self.hobby_3 == ("" || nil) ? score : score += 1
    self.description == (nil || "") ? score : score += 1
    self.linkedin_url == ("" || nil) ? score : score += 1
    self.visit_pages6 ? score += 6 : score # buddy
    # self.visit_pages5 ? score += 1 : score # buddy
    self.visit_pages4 ? score += 6 : score # team member
    self.visit_pages3 ? score += 6 : score # index users
    # self.visit_pages2 ? score += 1 : score # welcome
    self.visit_pages1 ? score += 6 : score # company
    self.upload_contrat.url.nil? ? score : score += 6
    score_to_return = (score.to_f/36*100).to_i
    return score_to_return
  end

  def buddy_object
    @buddy = User.find((self.buddy).to_i)
    return @buddy
  end

  def self.all_full_name
    user_first_names = []
    User.all.each do |user|
      concatenate = user.first_name + " " + user.last_name
      to_add = [concatenate, user.id]
      user_first_names << to_add
    end
    return user_first_names
  end

  def full_name
    full_name = self.first_name + " " + self.last_name
    return full_name
  end

  def timezone
    # key = ENV['TIMEZONEDBKEY']`
    key = 'QSETAOLPXC13'
    lat = self.latitude
    long = self.longitude
    url = "http://api.timezonedb.com/v2.1/get-time-zone?key=#{key}&format=json&by=position&lat=#{lat}&lng=#{long}"
    response = open(url).read
    to_display = JSON.parse(response)
    return to_display["gmtOffset"]/3600
  end

  def updatetimezone
    self.time_zone = self.timezone
    self.save
  end

  def matchingtimezone(compared)
    user1 = self.time_zone.to_i
    user2 = compared.time_zone.to_i
    diff = user1 - user2
    daystart = 9
    dayend = 19
    arr_user1 = (daystart..dayend).to_a
    arr_user2 = ((daystart + diff)..(dayend + diff)).to_a
    to_return = arr_user1 & arr_user2
    if to_return.empty?
      to_return = [0 ,0]
    else
      to_return
    end
  end
end
