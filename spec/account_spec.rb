require 'account'

describe Account do
  subject(:account) { described_class.new(test: "test") }
  subject(:account_two) { described_class.new(test: "test", opening_balance: 100)}

  context "balance" do
    it "defaults to 0 if no opening balance is provided" do
      expect(account.instance_variable_get(:@balance)).to eq 0
    end

    it "starts with 100 if an opening balance of 100 is provided" do
      expect(account_two.instance_variable_get(:@balance)).to eq 100
    end
  end

  describe "#deposit" do

    it "should increase the balance by the deposited amount" do
    account.deposit(100)
    expect(account.instance_variable_get(:@balance)).to eq 100
    end
  end

  context "#withdrawal" do
    it "should decrease the balance by the deposited amount" do
    account.deposit(100)
    p account.instance_variable_get(:@balance)
    account.withdrawal(50)
    expect(account.instance_variable_get(:@balance)).to eq 50
    end
  end


end
