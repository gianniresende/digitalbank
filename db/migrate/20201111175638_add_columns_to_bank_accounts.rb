class AddColumnsToBankAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :bank_accounts, :account_number, :string
    add_column :bank_accounts, :agency, :string
  end
end
