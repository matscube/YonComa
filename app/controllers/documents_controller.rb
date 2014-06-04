class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  after_filter :set_headers

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  def list
    @documents = Document.all
  end

  def product_list
    @products = Product.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @product = Product.new(document_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to '/', notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(
        :title,
        :date,
        :contents,
        :sent1,
        :sent2,
        :sent3,
        :sent4,
        :image1,
        :image2,
        :image3,
        :image4
      )
    end

    def product_params
      params.require(:product).permit(
        :title,
        :date,
        :contents,
        :sent1,
        :sent2,
        :sent3,
        :sent4,
        :image1,
        :image2,
        :image3,
        :image4
      )
    end

    def set_headers
      response.headers['Access-Control-Allow-Origin'] = '*'
    end
end
