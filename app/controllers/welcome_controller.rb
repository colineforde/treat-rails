class WelcomeController < ApplicationController
	def index
		@user = User.first
		render json: @user
	end
end
