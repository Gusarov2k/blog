class CommentsController < ApplicationController

	def create

		@article = Article.find(params[:article_id])
		@article.comments.create(comment_param)
		
		redirect_to article_path(@article)
	end

	private
	
	def comment_param
		params.require(:comment).permit(:author, :body)
	end

end
