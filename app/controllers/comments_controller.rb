class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.article)id = params[:article_id]
    @comment.save
    redirect_to article_path(@comment.article)
  end

  private
  
def comment_params
  params.require(:comment).permit(:autho_name, :body)
end


end
