class Value < ApplicationRecord
  belongs_to :company, dependent: :destroy
  belongs_to :value_category
end
