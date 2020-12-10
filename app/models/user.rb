class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills
  has_many :customer_jobs, class_name: 'Job', foreign_key: 'customer_id'
  has_many :handylady_jobs, class_name: 'Job', foreign_key: 'handylady_id'

  has_many :handylady_reviews, class_name: 'Review', through: :handylady_jobs, source: :reviews
  has_one_attached :photo

  # Validations for User
  # validates :name, :address, :bio, presence: true
  # validates :bio, length: { minimum: 10 }
  validates :photo, presence: true

  def messages(user)
    Message.where(sender: self, receiver: user).or(Message.where(sender: user, receiver: self))
  end

  def self.handyladies
    User.where(handylady: true)
  end

  def hourly_price
    user_skills.minimum(:price) || 0
  end

  def star_rating
    rating = handylady_reviews.average(:star_rating) || 0
    rating.to_i
  end
end
