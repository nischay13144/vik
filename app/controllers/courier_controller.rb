class CourierController < ApplicationController
	
	def new
	end

	def index
	end

	def edit
  		@courier = Courier.find(params[:id])
	end

	def create
		@courier = Courier.new(params.require(:courier).permit(:c_name, :p_name, :abn, :mob, :email, :c_type, :city, :comp_name, :date, :landline, :pin, :remarks, :country, :state))
 		if @courier.save
 			flash[:notice] = 'Courier Details were saved successfully'
 			redirect_to @courier
 		
		else
			render 'new'
		end
	end

	def show
    	@courier = Courier.find(params[:id])
	end

	def update
	    @courier = Courier.find(params[:id])
	    if @courier.update_attributes(params.require(:courier).permit(:c_name, :p_name, :abn, :mob, :email, :c_type, :city, :comp_name, :date, :landline, :pin, :remarks, :country, :state))
	      # Handle a successful update.
	    else
	      render 'edit'
	    end
  	end

end
