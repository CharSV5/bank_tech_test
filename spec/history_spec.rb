require 'history'

describe 'History' do
  describe 'log' do
    it 'returns all previous transactions' do
      all_transactions = [{:date=>"04/26/2018", :credit=>100, :debit=>"", :balance=>100},
        {:date=>"04/26/2018", :credit=>"", :debit=>10, :balance=>90}]
        subject = History.new(all_transactions)
      expect(subject.log).to eq [{:date=>"04/26/2018", :credit=>100, :debit=>"", :balance=>100},
        {:date=>"04/26/2018", :credit=>"", :debit=>10, :balance=>90}]
    end
  end
end
