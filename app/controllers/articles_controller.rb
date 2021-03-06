class ArticlesController < ApplicationController
	# Пременение авторизации для определенных action
	before_action :authenticate_user!, :only => [:new, :create]

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

		if @art.save
			# что бы небыло двойного заноса данных автоматом перенаправляет на занесённую статью
			redirect_to @art
		else
			render action: 'new'
		end
	end

	def edit
		@artic = Article.find(params[:id])
	end
	
	def update
		@artic = Article.find(params[:id])
		if @artic.update(article_param)
			redirect_to	@artic
		else
			render action: 'edit'
		end
	end

	def destroy
		@artic = Article.find(params[:id])
		@artic.destroy
		redirect_to articles_path
	end

	private
	
	def article_param
		params.require(:article).permit(:title, :text)
	end
end
