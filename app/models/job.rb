class Job < ApplicationRecord
  belongs_to :skill
  belongs_to :customer, class_name: 'User'
  belongs_to :handylady, class_name: 'User'
end
