class UsersController < ApplicationController

def new
	if current_user
		redirect_to buddies_path
	else
	@user = User.new
end
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
	@relationship = Relationship.where(
		follower_id: current_user.id,
		followed_id: @user.id
		).first_or_initialize if current_user
end




def edit
	@user = User.find(params[:id])

	redirect_to @user unless @user == current_user
	#@user = User.find(user_params)
	
end


def update
	@user = User.find(params[:id])
	#@user = User.find(user_params)

	if @user.update_attributes(user_params)
		redirect_to @user, notice: "Sexy Profile Updated!"
	else
		render 'edit'
	end
end

def user_params
	params.require(:user).permit(:relationship, :full_name, :password, :email, :name, :password_confirmation)
end





def allowed_params
	params.require(:user).permit(:relationship, :full_name, :password, :email, :name, :username, :password_confirmation)
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

def index
	@users = User.all
	@ribbit = Ribbit.new
end

def buddies
	if current_user
		@ribbit = Ribbit.new
		buddies_ids = current_user.followeds.map(&:id).push(current_user.id)
		#@ribbits = Ribbit.find_all_by_user_id buddies_ids
		@ribbits = Ribbit.where(user_id: buddies_ids)

	else
		redirect_to root_url
	end
	
end

end



