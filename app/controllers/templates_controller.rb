class TemplatesController < ApplicationController
    def index
        @templates = Template.all
        # render json: @templates
    end

 	def new
 	end

 	def create
	   @template = Template.new(params[:template.id])
	    if @template.save
	       render :'show'
	     else
	       redirect_to "/template/#{@template.id}/new"
	   end
	end
end