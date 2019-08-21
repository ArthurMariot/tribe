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
end
