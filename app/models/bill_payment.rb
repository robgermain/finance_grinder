class BillPayment < ApplicationRecord
	belongs_to: bill
	has_one: payment_method
	has_one: payment_method_category, through: payment_method
	has_one: payment_method_institution, through: payment_method
end
