class History
  attr_reader :all_transactions
  def initialize(all_transactions)
    @all_transactions = all_transactions
  end

  def log
    @all_transactions
  end
end
