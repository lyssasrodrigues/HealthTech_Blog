class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  #exibe a lista de todos os artigos cadastrados
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  # mostra um artigo especifico com base no ID
  def show
  end

  # GET /articles/new
  # exibe o formulario para criar um novo artigo
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  #exibe o formulario para editar um artigo existente
  def edit
  end

  # POST /articles or /articles.json
  # cria um novo artigo com base nos parametros enviados pelo formualrio
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: "Article was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy!

    respond_to do |format|
      format.html { redirect_to articles_path, notice: "Article was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
     def article_params
      params.require(:article).permit(:title, :summary, :category, :body, :published_at)
    end
end
