class UsersController < ApplicationController
	def index
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def new
		@user = User.new()
	end

	def create
		@user = User.create!(email: params[:email], password: params[:password])
		redirect_to '/templates'
	end
end
