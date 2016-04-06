class Template < ActiveRecord::Base
	belongs_to :card
	belongs_to :user_cards
end
