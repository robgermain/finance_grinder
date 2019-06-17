class Bill < ApplicationRecord
	belongs_to: billing_account
	has_many: bill_payments
end
