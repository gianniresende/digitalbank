class BankTransaction < ApplicationRecord
  belongs_to :user
  belongs_to :bank_account
end
