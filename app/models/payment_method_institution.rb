class PaymentMethodInstitution < ApplicationRecord
	has_many :payment_methods
	has_many :payment_method_categories, through: :payment_methods
	has_many :bill_payments, through: :payment_methods
end
