class RequestController < ApplicationController
	
	def new
	end

	def index
	end

	def create
		@request = Request.new(params.require(:request).permit(:name, :org, :email, :number, :interest, :message))
 		if @request.save
 			flash[:notice] = 'Your enquiry has been submitted'
 			redirect_to @request
 		
		else
			render 'new'
		end
	end

	def show
    	@request = Request.find(params[:id])
	end

end
