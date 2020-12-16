class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validate :maximum_per_user
  after_create :updated_user
  after_destroy :updated_user

  def maximum_per_user
    if user.user_skills.count >= 3
      errors.add(:user, "can't have more than 3 skills")
    end
  end

  def updated_user
    if user.user_skills.count == 0
      user.update(handylady: false)
    else
      user.update(handylady: true)
    end
  end
end
