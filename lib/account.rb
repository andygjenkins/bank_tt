class Account

  DEFAULT_BALANCE = 0

  def initialize(args)
    @balance = args[:opening_balance] || DEFAULT_BALANCE
    @test = args[:test]
  end


  def deposit(amount)
    update_account(amount)
  end

  def withdrawal(amount)
    update_account(-amount)
  end

  private

  def update_account(amount)
    @balance += amount
  end

end
