class PaymentMethodsController < ApplicationController

    before_action :set_payment_method, only: [:edit, :show, :update, :destroy]

    def index
        @payment_methods = PaymentMethod.all
    end

    def new
        @payment_method = PaymentMethod.new
    end

    def create
        if PaymentMethod.create!(payment_method_params)
            redirect_to payment_methods_path
        else
            render :new
        end
    end

    def update
        payment_method = PaymentMethod.find(params[:id])
        if payment_method.update!(payment_method_params)
            redirect_to payment_methods_path
        else
            render :edit
        end
    end

    def destroy
        if PaymentMethod.destroy(params.require(:id))
            redirect_to payment_methods_path
        else
            render :index
        end
    end

    private

    def set_payment_method
        @payment_method = PaymentMethod.find(params[:id])
    end

    def payment_method_params
        params.require(:payment_method).permit(:name, :payment_method_category_id, :payment_method_institution_id)
    end

end