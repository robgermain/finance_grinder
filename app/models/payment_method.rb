class PaymentMethod < ApplicationRecord
	belongs_to: payment_method_institution
	belongs_to: payment_method_category
	has_many: bill_payments
end
