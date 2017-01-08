class UsersController < ApplicationController

def new
	@user = User.new
end

#changed (params[:user]) to (user_params)

def create
	@user = User.new(params[:user])
	if @user.save
		redirect_to @user, notice: "Thank you for sexing it up for Ribbit!"
	else
		render 'new'
	end

def show
	@user = User.find(params[:id])
	@ribbit = Ribbit.new
end





end

end



