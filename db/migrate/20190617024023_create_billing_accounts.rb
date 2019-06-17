class CreateBillingAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :billing_accounts do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end
