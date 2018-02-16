class ArticlesController < ApplicationController
	
	
	def new
		
	end

	def create
		@art = Article.new(article_param)

		if @art.valid?
			@art.save
		else
			render action: 'new'
		end
	end

	def show
		@show_articles = Article.all
	end

	def destroy
		
	end

	private
	
	def article_param
		params.require(:article).permit(:title, :text)
	end
end
