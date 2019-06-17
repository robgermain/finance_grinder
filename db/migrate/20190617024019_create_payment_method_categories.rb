class CreatePaymentMethodCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_method_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
