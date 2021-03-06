class ArticlesController < ApplicationController
  before_action :get_article, only: [:edit, :update, :show, :destroy]
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def index
    @article = Article.all
  end

  def destroy

    if @article.destroy
      flash[:notice] = "Article was successfully deleted"
      redirect_to '/articles'
    end
  end

  def show

  end

  def edit


  end

  def update

    if @article.update(article_params)
      flash[:notice] = "Article was successfully edited"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private
  def get_article
    @article = Article.find(params[:id])
  end
  def article_params
    params.require(:article).permit(:title, :description, :content)
  end
end