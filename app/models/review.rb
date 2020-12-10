class Review < ApplicationRecord
  belongs_to :job
  belongs_to :user

  # Validations for Review
  validates :title, :description, :star_rating, presence: true
  validates :title, length: { minimum: 5 }
  validates :description, length: { minimum: 10, maximum: 1000 }
  validates :star_rating, numericality: true, :inclusion => { :in => 1..5 }
end
