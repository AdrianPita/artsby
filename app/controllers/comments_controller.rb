class CommentsController < ApplicationController
	def create
    #@comment = Comment.new(params[:comment])
 	@painting = Painting.find(params[:painting_id])

 	@comment = @painting.comments.builder comment_params
 	@comment.user = current_user
 	
    if @comment.save
      redirect_to @painting, notice: "Comment added"
    else
      redirect_to @painting, alert: "Comment not added :("
    end
  end

  private
  def comment_params
  	params.require(:comment).permit(:body)
  end
end
