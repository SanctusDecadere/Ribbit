class RibbitsController < ApplicationController
	
def index
	@ribbits = Ribbit.all
	@ribbit = Ribbit.new
end

	def create_params
		params.require(:ribbit).permit(:content, :user_id)
	end

	def create
		if @ribbit = Ribbit.new(create_params)
		@ribbit.user_id = current_user.id
		@ribbit.save


		flash[:success] = "Welcome to Sexy Ribbit! You just ribbited bitch!"
      	redirect_to root_url

      else

		flash[:error] = "Over 140 characters. Get to the point dude!" 
		redirect_to root_url

	end
	end

	

end

