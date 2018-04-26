class BankAccount
  attr_reader :date, :balance, :transaction, :history
  def initialize(balance = 0)
    @balance = balance
    @transaction = { date: date, credit: '', debit: '', balance: balance }
  end

  def show_balance
    @balance
  end
end
