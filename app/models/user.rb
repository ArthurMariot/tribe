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
    @score = 0
    self.avatar != "" ? @score += 1 : @score
    self.hobby_1 != "" ? @score += 1 : @score
    self.hobby_2 != "" ? @score += 1 : @score
    self.hobby_3 != "" ? @score += 1 : @score
    self.location != "" ? @score += 1 : @score
    self.description != "" ? @score += 1 : @score
    self.linkedin_url != "" ? @score += 1 : @score
    self.personal_mail != "" ? @score += 1 : @score
    self.visit_pages2 != "" ? @score += 1 : @score
    self.visit_pages1 != "" ? @score += 1 : @score
    return @score
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
end
