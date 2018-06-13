require 'printer'

describe 'printer' do
  describe '#statement' do
    it 'prints a statement' do
      all_transactions = [{:date=>"04/26/2018", :credit=>100, :debit=>"", :balance=>100},
        {:date=>"04/26/2018", :credit=>"", :debit=>10, :balance=>90}]
          subject = Printer.new(all_transactions)
          subject.statement
          expect(subject.final).to eq "04/26/2018 || 100 || || 100
                                       04/26/2018 || || 10 || 90 "
    end
  end
end
