require 'date'
require_relative 'history'

class BankAccount
  attr_reader :current_date, :date, :transaction, :balance, :all_transactions, :history
  def initialize(balance = 0)
    @current_date = Time.now.strftime("%m/%d/%Y")
    @transaction = { date: date, credit: '', debit: '', balance: balance }
    @all_transactions = []
    @balance = balance
  end

  def create_history(history = History.new(@all_transactions))
    @history = history
  end

  def show_balance
    @balance
  end

  def deposit(date = current_date, amount)
    @current_date = current_date
    @balance += amount
    @transaction = { date: date, credit: amount, debit: '', balance: @balance }
    @all_transactions.push(@transaction)
  end

  def withdraw(date = current_date, amount)
    @current_date = current_date
    @balance -= amount
    @transaction = { date: date, credit: '', debit: amount, balance: @balance }
    @all_transactions.push(@transaction)
  end
end
