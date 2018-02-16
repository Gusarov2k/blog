class ArticlesController < ApplicationController
	
	def show
		@artic = Article.find(params[:id])
	end
	
	def index
		@show_articles = Article.all
	end

	def new
		
	end

	def create
		@art = Article.new(article_param)

		if @art.valid?
			@art.save
			# что бы небыло двойного заноса данных автоматом перенаправляет на занесённую статью
			redirect_to @art
		else
			render action: 'new'
		end
	end

	
	def destroy
		
	end

	private
	
	def article_param
		params.require(:article).permit(:title, :text)
	end
end
