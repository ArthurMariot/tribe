class Value < ApplicationRecord
  belongs_to :company
  belongs_to :value_category
end
