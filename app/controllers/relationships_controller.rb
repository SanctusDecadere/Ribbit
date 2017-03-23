class RelationshipsController < ApplicationController




def create
	@relationship = Relationship.create(app_params)
	@relationship.follower = current_user

	flash[:error] = "could not follow this sexy creature" unless @relationship.save
	redirect_to @relationship.followed
end

def destroy
	relationship = Relationship.find(params[:id])
	user = relationship.followed
	relationship.destroy
	redirect_to user
end




private
def app_params
	params.require(:relationship).permit(:follower_id, :followed_id, :follower_relationships, :followed_relationships, :followers, :followeds)
end



end
