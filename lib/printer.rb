class Printer
  attr_reader  :all_transactions, :printout
  def initialize(all_transactions)
    @all_transactions = all_transactions

  end

  def statement
  @printout = @all_transactions.map do |transaction|
     p "#{transaction[:date]} || #{transaction[:credit]} || "\
      "#{transaction[:debit]} || #{transaction[:balance]}"

    end
  end

  def final
    @printout.join('\n')
  end
end
