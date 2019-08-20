class Team < ApplicationRecord
  belongs_to :company, dependent: :destroy
end
