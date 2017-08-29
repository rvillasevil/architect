class VotesController < ApplicationController

	def create
	@micropost = Micropost.find(params[:micropost_id])
	@vote = @micropost.votes.build(vote_params)
		if 	@vote.save
			flash[:success] = "Voto añadido"
			redirect_to root_url
		else
			@feed_items = []
      		render 'static_pages/home'
	    end
  	end

  	def destroy
	    @vote.destroy
	    flash[:success] = "vote deleted"
	    redirect_to request.referrer || root_url
  	end

  	def index
  		@user = User.find(params[:id])
  		@voter = User.where(:user_id => vote.user.id)
  		@micropost = Micropost.find(params[:id])
  		@votes = @micropost.votes.paginate(page: params[:page])
  	end


 private

    def vote_params
      params.require(:vote).permit(:micropost_id, :user_id, :like, :dislike)
    end

end