class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'

  def self.conversation(user1, user2)
    Message.where(sender: user1, receiver: user2).or(
      Message.where(sender: user2, receiver: user1)
      ).order(:created_at)
  end

  def self.chat_id(user1, user2)
    user1_id = user1.id
    user2_id = user2.id
    [user1_id, user2_id].sort.join('_')
  end

  def conversation_partner(user)
    partner = [receiver, sender] - [user]
    partner.first
  end
end
