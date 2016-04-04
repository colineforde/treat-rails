class CardsController < ApplicationController
	def index
	end

	def sent
		@user = User.first
		@cards = @user.user_cards
		render json: @cards.map { |card|
        {recipient: User.find(card.recipient.id).username,
        greeting: card.card.greeting,
        message: card.card.message}
      }
	end

	def show
	end
end
