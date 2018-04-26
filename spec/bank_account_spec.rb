require 'bank_account'

describe 'BankAccount' do
  subject {BankAccount.new}
  describe '#show_balance' do
    it 'returns the current balance' do
      expect(subject.show_balance).to eq 0
    end
  end
  describe '#deposit' do
    it 'lets you make a deposit' do
      subject.deposit(100)
      expect(subject.show_balance).to eq 100
    end
  end
end
