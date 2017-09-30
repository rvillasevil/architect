class VotesController < ApplicationController

	def create
	@micropost = Micropost.find(params[:micropost_id])
	@vote = @micropost.votes.build(vote_params)
		if 	@vote.save
			flash[:success] = "Voto añadido"
			redirect_to :back
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

  def update_like
    @micropost = Micropost.find(params[:micropost_id])
    if @micropost.votes.select(:user_id == current_user.id).update(like: 1, dislike: 0)
      flash[:success] = "Voto actualizado"
      redirect_to :back
    else
    end
  end

  def update_dislike
    @micropost = Micropost.find(params[:micropost_id])
    if @micropost.votes.select(:user_id == current_user.id).update(like: 0, dislike: 1)
      flash[:success] = "Voto actualizado"
      redirect_to :back
    else
    end
  end


 private

    def vote_params
      params.require(:vote).permit(:micropost_id, :user_id, :like, :dislike)
    end

end