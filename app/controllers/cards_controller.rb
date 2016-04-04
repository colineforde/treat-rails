class CardsController < ApplicationController
	def index
	end

	def sent
		@user = User.first
		@cards = @user.user_cards
		card_info = []
		@cards.each do |card|
			card_info << ["recipient: #{User.find(card.recipient.id).username}",
				"greeting: #{card.card.greeting}",
				"message: #{card.card.message}"
			]
		end
		render json: card_info
	end

	def show
	end
end
