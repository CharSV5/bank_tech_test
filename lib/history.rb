require_relative 'printer'

class History
  attr_reader :all_transactions, :printer
  def initialize(all_transactions)
    @all_transactions = all_transactions
  end

  def log
    @all_transactions
  end

  def create_printer(printer = Printer.new(@all_transactions))
    @printer = printer
  end
end
