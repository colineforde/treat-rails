class UserCard < ActiveRecord::Base
	belongs_to :user
	belongs_to :card
	belongs_to :recipient
	has_one :template
end
