class PaymentMethodCategory < ApplicationRecord
	has_many: payment_methods
	has_many: payment_method_institutions, through: payment_methods
	has_many: bill_payments, through: payment_methods
end
