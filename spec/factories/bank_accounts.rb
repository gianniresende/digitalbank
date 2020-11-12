FactoryBot.define do
  factory :bank_account do
    sequence(:account_number) { |n| "MyString #{n}" }
  end
end