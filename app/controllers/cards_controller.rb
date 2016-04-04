class CardsController < ApplicationController
	def index
	end

	def sent
		@user = User.first
		@cards = @user.user_cards
		render json: {recipients: @cards.each{|card| User.find(card.recipient.id)},
					greeting: @cards.each{|card| card.card.greeting}, 
					message: @cards.each{|card| card.card.message}}
	end

	def show
	end
end
