class CreatePaymentMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.boolean :is_active
      t.integer :payment_method_institution_id
      t.integer :payment_method_category_id

      t.timestamps
    end
  end
end
