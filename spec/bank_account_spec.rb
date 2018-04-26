require 'bank_account'

describe 'BankAccount' do
  subject {BankAccount.new}
  describe '#show_balance' do
    it 'returns the current balance' do
      expect(subject.show_balance).to eq 0
    end
  end
end
