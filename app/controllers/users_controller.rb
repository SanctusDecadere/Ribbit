class UsersController < ApplicationController

def new
	@user = User.new
end



def create
	@user = User.new(params[:user])
	if @user.save
		redirect_to @user, notice: "Thank you for sexing it up for Ribbit!"
	else
		render 'new'
	end
end

end



