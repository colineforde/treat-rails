require 'bcrypt'
class User < ActiveRecord::Base
	include BCrypt
	has_many :recipient_gifts, foreign_key: :sender_id, class_name: Recipient
	has_many :recipients, through: :recipient_gifts, source: :recipient
	has_many :sender_gifts, foreign_key: :recipient_id, class_name: Recipient
	has_many :senders, through: :sender_gifts, source: :sender
	has_many :user_cards
	has_many :cards, through: :user_cards

	def password
    	@password ||= Password.new(password_hash)
  	end

  	def password=(new_password)
    	@password = Password.create(new_password)
    	self.password_hash = @password
  	end

  	def authenticate(password)
	 	self.password == password
	 end
end
