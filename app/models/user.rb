class User < ActiveRecord::Base
	has_many :cards
	has_many :recipient_gifts, foreign_key: :recipient_id, class_name: Recipient
	has_many :recipients, through: :recipient_gifts, source: :recipient
	has_many :sender_gifts, foreign_key: :sender_id, class_name: Recipient
	has_many :senders, through: :sender_gifts, source: :sender
	has_many :user_cards
	has_many :cards, through: :user_cards
end
