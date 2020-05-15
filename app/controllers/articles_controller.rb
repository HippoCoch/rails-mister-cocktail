class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @article = Dose.new
  end

  def new
    @article = Cocktail.new
  end

  def create
    @article = Cocktail.new(cocktail_params)
    if @article.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, photo: [])
  end
end
