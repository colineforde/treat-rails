class UserCardsController < ApplicationController

	def new
		@card_template = Template.find(params[:template_id])
	end
end
