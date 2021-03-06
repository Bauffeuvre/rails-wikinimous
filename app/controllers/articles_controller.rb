class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end
  
  def show
    article_id
  end
  
  def edit
    article_id
  end
  
  def update
    article_id
    @article.update(article_params)
    redirect_to articles_path
  end
  
  def destroy
    article_id
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_id
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
