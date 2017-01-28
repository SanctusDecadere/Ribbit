class RibbitsController < ApplicationController
def index
	@ribbits = Ribbit.all
	@ribbit = Ribbit.new
end



	def create
		@ribbit = Ribbit.new(params[:ribbit].permit(:content, :user_id))


		#ribbit = Ribbit.new(params[:ribbit])
		@ribbit.user_id = current_user.id

		#session[:user_id] = @user.id
		
		flash[:error] = "Over 140 characters. Get to the point" unless @ribbit.save
		redirect_to root_url
		#redirect_to current_user

	end
end

#4.4 tutorial around 2min in for original code