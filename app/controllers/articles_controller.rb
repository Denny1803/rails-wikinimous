class ArticlesController < ApplicationController

    def index
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to article_path(@article)

    end

    private

    def article_params
        params.require(:article).permit(:title, :content)

    end
end
