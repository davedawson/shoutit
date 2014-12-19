class ShoutsController < ApplicationController
	def new
		@shout = Shout.new
	end
	def create
		@shout = Shout.new
		if @shout.valid?
			@shout = Shout.create_shout(shout_params)
			redirect_to shout_path(@shout)
		else 
			validation_messages = @shout.errors.messages.to_s
			flash[:error] = error_message
			render 'new'
		end
	end

	def show
		@shout = Shout.find params[:id]
	end

	private
	    def shout_params
	      params.require(:shout).permit(
	        :id,
	        :text,
	        :name,
	        :twitter,
	        :color
	      )
	    end
end
