class UsersController < ApplicationController
	def index
	end

	 def show
   		@user = User.find(params[:id])
        @sent = UserCard.where(user_id: @user.id)
    end

	def new
		@user = User.new()
	end

	def create
		@user = User.create!(email: params[:email], password: params[:password])
		redirect_to '/templates'
	end

	def sent
		@user = User.find(params[:id])
		@cards = @user.user_cards
		render json: @cards.map { |card|
        {id: card.id, to: User.find(card.user_id).phone, from: User.find(card.recipient_id).phone,
        	# recipient: User.find(card.recipient.id).username,
        greeting: card.card.greeting,
        message: card.card.message,
        occasion: card.card.occasion } }
	end

	def received
		@user = User.find(params[:id])
		@cards = UserCard.where(recipient_id: @user.id)
		render json: @cards.map { |card|
        {id: card.id, to: User.find(card.user_id).phone, from: User.find(card.recipient_id).phone,
        	# recipient: User.find(card.recipient.id).username,
        greeting: card.card.greeting,
        message: card.card.message,
        occasion: card.card.occasion } } 

	end
end

#/users/:id/sent
#to - phone number of the recipient, occasion - string from - phone number, message, card_id - 
#/users/:id/received
# 

