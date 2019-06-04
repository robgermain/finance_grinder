class CreatePaymentMethodInstitutions < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_method_institutions do |t|
      t.string :name

      t.timestamps
    end
  end
end
