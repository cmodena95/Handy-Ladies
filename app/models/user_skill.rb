class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validate :maximum_per_user

  def maximum_per_user
    if user.user_skills.count >= 3
      errors.add(:user, "can't have more than 3 skills")
    end
  end
end
