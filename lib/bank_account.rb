require 'date'

class BankAccount
  attr_reader :date, :balance, :transaction, :history
  def initialize(balance = 0)
    @balance = balance
    @transaction = { date: date, credit: '', debit: '', balance: balance }
  end

  def show_balance
    @balance
  end

  def deposit(date = Date.new, amount)
    @balance += amount
    @transaction = { date: date, credit: amount, debit: '', balance: @balance }
  end

  def withdraw(date = Date.new, amount)
    @balance -= amount
    @transaction = { date: date, credit: '', debit: amount, balance: @balance }
  end
end
