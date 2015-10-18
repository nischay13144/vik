class CourController < ApplicationController
	
	def new
	end

	def index
	end

	def edit
  		@cour = Cour.find(params[:id])
	end

	def create
		@cour = Cour.new(params.require(:cour).permit(:c_name, :p_name, :abn, :mob, :email, :c_type, :city, :comp_name, :trans_date, :landline, :pin, :remarks, :country, :state, :delivery_date, :trans_status, :sms_reply, :web_confirm))
 		
 		if @cour.save
 			
 			
 			flash[:notice] = 'cour Details were saved successfully'
 			redirect_to @cour
 			
		else
			render 'new'
		end
	end

	def show
    	@cour = Cour.find(params[:id])
	end

	def update
	    @cour = Cour.find(params[:id])
	    if @cour.update_attributes(params.require(:cour).permit(:c_name, :p_name, :abn, :mob, :email, :c_type, :city, :comp_name, :date, :landline, :pin, :remarks, :country, :state, :delivery_date, :trans_status, :sms_reply, :web_confirm))
	      # Handle a successful update.
	    else
	      render 'edit'
	    end
  	end
end
