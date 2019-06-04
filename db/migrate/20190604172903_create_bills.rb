class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.date, :due_date
      t.decimal :minimum_due, precision: 10, scale: 2

      t.timestamps
    end
  end
end
