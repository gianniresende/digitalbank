class BankAccount < ApplicationRecord
  belongs_to :user

  validates :account_number, presence: true, uniqueness: { case_sensitive: false }
  validates :balance, presence: true, numericality: { greater_than: 0}
  validates :user_id, presence: true
  
  
end
