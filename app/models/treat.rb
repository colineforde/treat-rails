class Treat < ActiveRecord::Base
	belongs_to_many :user_cards
end