class RibbitsController < ApplicationController

	def create
		@ribbit = Ribbit.new(params[:ribbit].permit(:content, :user_id))


		#ribbit = Ribbit.new(params[:ribbit])
		@ribbit.user_id = current_user.id

		if @ribbit.save

		else
			flash[:error] = "Over 140 characters. Get to the point. ktxbi"
		end
		redirect_to root_url

	end
end

#4.4 tutorial around 2min in for original code