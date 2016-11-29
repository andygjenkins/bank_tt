require 'account'

describe Account do
  subject(:account) { described_class.new() }
  subject(:account_two) { described_class.new(balance: 100)}

  describe "balance" do
    it "defaults to 0 if no opening balance is provided" do
      expect(account.instance_variable_get(:@balance)).to eq 0
    end

    it "starts with 100 if an opening balance of 100 is provided" do
      expect(account_two.instance_variable_get(:@balance)).to eq 100
    end
  end

  describe ".deposit" do

    it "should increase the balance by the deposited amount" do
      account.deposit(100)
      expect(account.instance_variable_get(:@balance)).to eq 100
    end
  end

  describe ".withdraw" do
    it "should decrease the balance by the deposited amount" do
      account.deposit(100)
      account.withdraw(50)
      expect(account.instance_variable_get(:@balance)).to eq 50
    end
  end

  describe "#print_statement" do

    before :each do
      account.deposit(300)
      account.withdraw(250)
    end

    it "should print out a string of previous transactions" do
      expect(account.print_statement).to be_a(String)
    end
  end
end
