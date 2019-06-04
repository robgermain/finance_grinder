class PaymentMethodInstitutionsController < ApplicationController
    before_action :set_payment_method_institution, only: [:show, :edit, :update, :destroy]
  
    # GET /payment_method_institutions
    # GET /payment_method_institutions.json
    def index
      @payment_method_institutions = PaymentMethodInstitution.all
    end
  
    # GET /payment_method_institutions/1
    # GET /payment_method_institutions/1.json
    def show
    end
  
    # GET /payment_method_institutions/new
    def new
      @payment_method_institution = PaymentMethodInstitution.new
    end
  
    # GET /payment_method_institutions/1/edit
    def edit
    end
  
    # POST /payment_method_institutions
    # POST /payment_method_institutions.json
    def create
      @payment_method_institution = PaymentMethodInstitution.new(payment_method_institution_params)
  
      respond_to do |format|
        if @payment_method_institution.save
          format.html { redirect_to @payment_method_institution, notice: 'PaymentMethodInstitution was successfully created.' }
          format.json { render :show, status: :created, location: @payment_method_institution }
        else
          format.html { render :new }
          format.json { render json: @payment_method_institution.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /payment_method_institutions/1
    # PATCH/PUT /payment_method_institutions/1.json
    def update
      respond_to do |format|
        if @payment_method_institution.update(payment_method_institution_params)
          format.html { redirect_to @payment_method_institution, notice: 'PaymentMethodInstitution was successfully updated.' }
          format.json { render :show, status: :ok, location: @payment_method_institution }
        else
          format.html { render :edit }
          format.json { render json: @payment_method_institution.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /payment_method_institutions/1
    # DELETE /payment_method_institutions/1.json
    def destroy
      @payment_method_institution.destroy
      respond_to do |format|
        format.html { redirect_to payment_method_institutions_url, notice: 'PaymentMethodInstitution was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_payment_method_institution
        @payment_method_institution = PaymentMethodInstitution.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def payment_method_institution_params
        params.require(:payment_method_institution).permit(:name)
      end
  end
  