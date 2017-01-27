class UsersController < ApplicationController

def new
	@user = User.new
end

#changed (params[:user]) to (user_params)

#def create
	#@user = User.new(params[:user])
	#if @user.save
	#	redirect_to @user, notice: "Thank you for sexing it up for Ribbit!"
	#else
	#	render 'new'
	#end

def show
	@user = User.find(params[:id])
	@ribbit = Ribbit.new
end








def allowed_params
	params.require(:user).permit(:full_name, :password, :email, :name, :username, :password_confirmation)
end

def create
	@user = User.create(allowed_params)
	if @user.save
		session[:user_id] = @user.id
		redirect_to users_path @user, notice: "This is the second create method"
	else
		render 'new'
	end

	#redirect_to users_path
end



end

#end



