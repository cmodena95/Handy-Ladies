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
  has_many_attached :portfolio_photos

  accepts_nested_attributes_for :user_skills, reject_if: :all_blank, allow_destroy: true
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

  def latest_messages
    partner_ids = []
    latest_messages_raw.filter do |message|
      partner_id = [message.receiver_id, message.sender_id] - [id]
      if partner_ids.include? partner_id
        false
      else
        partner_ids << partner_id
      end
    end
  end

  private

  def latest_messages_raw
    messages = Message.includes(:sender, :receiver).select(
      "DISTINCT ON (sender_id, receiver_id)
        id, sender_id, receiver_id, content, created_at"
    ).order('sender_id, receiver_id, created_at DESC')
    .where('sender_id = :id or receiver_id = :id', id: id)
    messages.sort { |m, n| n.created_at <=> m.created_at }
  end
end
