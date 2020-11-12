class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :active
      t.integer :account_type
      t.decimal :balance, precision: 9, scale: 2

      t.timestamps
    end
  end
end
