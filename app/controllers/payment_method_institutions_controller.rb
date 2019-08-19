class PaymentMethodInstitutionsController < ApplicationController

    before_action :set_payment_method_institution, only: [:edit, :show, :update, :destroy]

    def index
        @payment_method_institutions = PaymentMethodInstitution.all
    end

    def new
        @payment_method_institution = PaymentMethodInstitution.new
    end

    def create
        if PaymentMethodInstitution.create(payment_method_institution_params)
            # flash[:success] = "Payment Method Institution Added"
            redirect_to root_path
        else
            render :new
        end
    end

    def update
        payment_method_institution = PaymentMethodInstitution.find(params[:id])
        if payment_method_institution.update(payment_method_institution_params)
            redirect_to root_path
        else
            render :edit
        end
    end

    def destroy
        if PaymentMethodInstitution.destroy(params.require(:id))
            redirect_to root_path
        else
            render :index
        end
    end

    private

    def set_payment_method_institution
        @payment_method_institution = PaymentMethodInstitution.find(params[:id])
    end

    def payment_method_institution_params
        params.require(:payment_method_institution).permit(:name)
    end

end