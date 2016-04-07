class SessionsController < ApplicationController

	def new
		@user = User.find_by(email: params[:email])
	end

	def create
		if @user = User.find_by(email: params[:email])
			if @user.authenticate(params[:password]) 
				session[:user_id] = @user.id
				redirect_to '/user_cards' 

				# render json: @user
			else
				p 'hi'
				# render json: {authorization: false, message: "invalid password"}
			end
		else
			' no'
			# render json: {authorization: false, message: "user is invalid"}
		end
	end
end
