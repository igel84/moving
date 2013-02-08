class ArticlesController < ApplicationController
  
  def index
    @article = Article.first
    render action:'show'
  end

  def show
    @article = Article.find_by_slug(params[:id])
  end

  def up
    @article = Article.find(params[:id])
    @article.move_right #unless @article.leaf?
    redirect_to :back
  end

  def down
    @article = Article.find(params[:id])
    @article.move_left #unless @article.leaf?
    redirect_to :back
  end

end
