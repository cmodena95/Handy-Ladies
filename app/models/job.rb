class Job < ApplicationRecord
  belongs_to :skill
  belongs_to :customer, class_name: 'User'
  belongs_to :handylady, class_name: 'User'
  has_many :reviews
  has_many :payments

  # Validations for Job
  validates :location, :date, :description, :title, presence: true
  validates :description, length: { minimum: 10, maximum: 1000 }
  validates :title, length: { minimum: 5 }
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end
end
