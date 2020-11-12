class CreateBankTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bank_account, null: false, foreign_key: true
      t.integer :bank_transaction_type
      t.decimal :bank_transaction_value, precision: 9, scale: 2
      t.integer :bank_transaction_status
      t.text :transaction_description

      t.timestamps
    end
  end
end
