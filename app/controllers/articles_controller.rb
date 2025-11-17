class ArticlesController < ApplicationController
  # impedir que usuarios nao autenticados ciem, editem ou removam artigos
  before_action :authenticate_user!, except: %i[index show]

  # Carrega o artigo para acoes especificas
  before_action :set_article, only: %i[show edit update destroy]

  # apenas o autor pode editar/deletar
  before_action :authorize_user!, only: %i[edit update destroy]

  # GET /articles
  def index
    #  lista todos os artigos, mais recentes primeiro
    @articles = Article.order(created_at: :desc)
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = current_user.articles.build
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article, notice: "Artigo criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Artigo atualizado com sucesso!", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy!
    redirect_to articles_path, notice: "Artigo removido com sucesso!", status: :see_other
  end

  # GET /meus-artigos
  def my_articles
    @articles = current_user.articles.order(created_at: :desc)
  end

  private

  # carrega o artigo pelo ID
  def set_article
    @article = Article.find(params[:id])
  end

  # impede edição/remoção por usuários que nao sao o autor
  def authorize_user!
    return if @article.user == current_user

    redirect_to articles_path, alert: "Você não tem permissão para fazer isso."
  end

  
  def article_params
    params.require(:article).permit(:title, :summary, :category, :body, :published_at)
  end
end
