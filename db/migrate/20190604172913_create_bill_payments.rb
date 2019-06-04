class CreateBillPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_payments do |t|
      t.decimal :amount_paid, precision: 10, scale: 2
      t.date, :payment_date
      t.string :confirmation_number

      t.timestamps
    end
  end
end
