json.extract! bill_payment, :id, :amount_paid, :payment_date, :confirmation_number, :created_at, :updated_at
json.url bill_payment_url(bill_payment, format: :json)
