json.extract! bill, :id, :due_date, :minimum_due, :created_at, :updated_at
json.url bill_url(bill, format: :json)
