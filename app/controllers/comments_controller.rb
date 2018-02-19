class CommentsController < ApplicationController
# Пременение авторизации для определенных action
	before_action :authenticate_user!, :only => [:create]

	def create

		@article = Article.find(params[:article_id])
		@art = @article.comments.new(author: current_user.username, body: comment_param)
		@art.save
		
		redirect_to article_path(@article)
	end

	private
	
	def comment_param
		params.require(:comment).permit(:body)
	end

end
