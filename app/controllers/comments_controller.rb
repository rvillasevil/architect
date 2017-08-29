class CommentsController < ApplicationController

	def create
	@micropost = Micropost.find(params[:micropost_id])
	@comment = @micropost.comments.build(comment_params)
		if 	@comment.save
			flash[:success] = "Comentario añadido"
			redirect_to root_url
		else
			@feed_items = []
      		render 'static_pages/home'
	    end
  	end

  	def destroy
	    @comment.destroy
	    flash[:success] = "comment deleted"
	    redirect_to request.referrer || root_url
  	end

  	def index
  		@user = User.find(params[:id])
  		@commenter = User.where(:user_id => comment.user.id)
  		@micropost = Micropost.find(params[:id])
  		@comments = @micropost.comments.paginate(page: params[:page])
  	end


 private

    def comment_params
      params.require(:comment).permit(:contenido, :content, :user_id)
    end

end
