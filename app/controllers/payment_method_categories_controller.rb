class PaymentMethodCategoriesController < ApplicationController
  before_action :set_payment_method_category, only: [:show, :edit, :update, :destroy]

  # GET /payment_method_categories
  # GET /payment_method_categories.json
  def index
    @payment_method_categories = PaymentMethodCategory.all
  end

  # GET /payment_method_categories/1
  # GET /payment_method_categories/1.json
  def show
  end

  # GET /payment_method_categories/new
  def new
    @payment_method_category = PaymentMethodCategory.new
  end

  # GET /payment_method_categories/1/edit
  def edit
  end

  # POST /payment_method_categories
  # POST /payment_method_categories.json
  def create
    @payment_method_category = PaymentMethodCategory.new(payment_method_category_params)

    respond_to do |format|
      if @payment_method_category.save
        format.html { redirect_to @payment_method_category, notice: 'Payment method category was successfully created.' }
        format.json { render :show, status: :created, location: @payment_method_category }
      else
        format.html { render :new }
        format.json { render json: @payment_method_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_method_categories/1
  # PATCH/PUT /payment_method_categories/1.json
  def update
    respond_to do |format|
      if @payment_method_category.update(payment_method_category_params)
        format.html { redirect_to @payment_method_category, notice: 'Payment method category was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_method_category }
      else
        format.html { render :edit }
        format.json { render json: @payment_method_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_method_categories/1
  # DELETE /payment_method_categories/1.json
  def destroy
    @payment_method_category.destroy
    respond_to do |format|
      format.html { redirect_to payment_method_categories_url, notice: 'Payment method category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_method_category
      @payment_method_category = PaymentMethodCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_method_category_params
      params.require(:payment_method_category).permit(:name)
    end
end
