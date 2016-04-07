class SessionsController < ApplicationController
	def create
		if @user = User.find_by(email: params[:email])
			if @user.authenticate(params[:password]) 
				session[:user_id] = @user.id
				render json: @user
			else
				render json: {authorization: false, message: "invalid password", text: "404 Not found", status: "404"}
			end
		else
			render json: {authorization: false, message: "user is invalid", text: "404 Not found", status: "404"}
		end
	end
end
