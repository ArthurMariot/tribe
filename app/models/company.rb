class Company < ApplicationRecord
  has_many :users
  has_many :values
  has_many :teams, dependent: :destroy
end
