class TipoProdutosController < ApplicationController
  before_action :set_tipo_produto, only: %i[ show edit update destroy ]

  # GET /tipo_produtos or /tipo_produtos.json
  def index
    @tipo_produtos = TipoProduto.all
  end

  # GET /tipo_produtos/1 or /tipo_produtos/1.json
  def show
  end

  # GET /tipo_produtos/new
  def new
    @tipo_produto = TipoProduto.new
  end

  # GET /tipo_produtos/1/edit
  def edit
  end

  # POST /tipo_produtos or /tipo_produtos.json
  def create
    @tipo_produto = TipoProduto.new(tipo_produto_params)

    respond_to do |format|
      if @tipo_produto.save
        format.html { redirect_to @tipo_produto, notice: "Tipo produto was successfully created." }
        format.json { render :show, status: :created, location: @tipo_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_produtos/1 or /tipo_produtos/1.json
  def update
    respond_to do |format|
      if @tipo_produto.update(tipo_produto_params)
        format.html { redirect_to @tipo_produto, notice: "Tipo produto was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_produtos/1 or /tipo_produtos/1.json
  def destroy
    @tipo_produto.destroy

    respond_to do |format|
      format.html { redirect_to tipo_produtos_path, status: :see_other, notice: "Tipo produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_produto
      @tipo_produto = TipoProduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_produto_params
      params.require(:tipo_produto).permit(:nome)
    end
end
