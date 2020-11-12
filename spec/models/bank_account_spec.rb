require 'rails_helper'

RSpec.describe BankAccount, type: :model do
  it { is_expected.to validate_presence_of(:account_number) }
  #it { is_expected.to validate_uniqueness_of(:account_number).case_insensitive }
  it { is_expected.to validate_presence_of(:user_id) }
  it { is_expected.to validate_numericality_of(:balance).is_greater_than(0) }
  #it { is_expected.to validate_presence_of(:agency) }
end
