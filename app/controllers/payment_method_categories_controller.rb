class PaymentMethodCategoriesController < ApplicationController

    before_action :set_payment_method_category, only: [:edit, :show, :update, :destroy]

    def index
        @payment_method_categories = PaymentMethodCategory.all
    end

    def show
    end

    def new
        @payment_method_category = PaymentMethodCategory.new
    end

    def edit
    end

    def create
        if PaymentMethodCategory.create!(payment_method_category_params)
            flash[:success] = "Payment Method Category Added"
        else
            render :new
        end
    end

    def update
        if PaymentMethodCategory.update(payment_method_category_params)
            redirect_to root_path
        else
            render :edit
        end
    end

    def destroy
        if PaymentMethodCategory.destroy(payment_method_category_params)
            redirect_to root_path
        else
            render :index
        end
    end

    private

    def set_payment_method_category
        @payment_method_category = PaymentMethodCategory.find(params[:id])
    end

    def payment_method_category_params
        @payment_method_category.require(:payment_method_category).permit(:name)
    end

end