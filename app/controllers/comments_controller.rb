class CommentsController < ApplicationController
 # http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def index
    @article = Article.find(params[:article_id])
    @user = @article.sender
  end

  def create
    @user = current_user[:id]
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to user_article_path(@user, @article)
  end
  
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy 
    redirect_to user_article_path(@user, @article)
  end

  private
    def comment_params
	params.require(:comment).permit(:commenter, :body)
    end
end