class Template < ActiveRecord::Base
	belongs_to :card
	has_and_belongs_to_many :user_cards
end
