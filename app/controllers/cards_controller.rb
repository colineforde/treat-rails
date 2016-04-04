class CardsController < ApplicationController
	def index
	end

	def sent
		@user = User.first
		@cards = @user.user_cards
	end

	def show
	end
end
