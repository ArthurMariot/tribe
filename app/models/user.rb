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

  pg_search_scope :search_by_team,
    against: [:team],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  mount_uploader :avatar, AvatarUploader
  mount_uploader :contract_pdf, FilespdfUploader
  mount_uploader :upload_contrat, FilespdfUploader
  mount_uploader :rules_reglementation_pdf, FilespdfUploader
  mount_uploader :upload_internal_rules, FilespdfUploader

  def progress
    @score = 0
    self.first_name != "" ? @score += 1 : @score
    self.last_name != "" ? @score += 1 : @score
    self.avatar != "" ? @score += 1 : @score
    self.hobby_1 != "" ? @score += 1 : @score
    self.hobby_2 != "" ? @score += 1 : @score
    self.hobby_3 != "" ? @score += 1 : @score
    self.location != "" ? @score += 1 : @score
    self.linkedin_url != "" ? @score += 1 : @score
    self.slack_account != "" ? @score += 1 : @score
    self.personal_mail != "" ? @score += 1 : @score
    self.visit_pages4 != "" ? @score += 1 : @score
    self.visit_pages3 != "" ? @score += 1 : @score
    self.visit_pages2 != "" ? @score += 1 : @score
    self.visit_pages1 != "" ? @score += 1 : @score
    return @score
  end
end
