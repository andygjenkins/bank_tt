class Account

  DEFAULT_BALANCE = 0

  def initialize(args)
    @balance = args[:opening_balance] || DEFAULT_BALANCE
    @test = args[:test]
  end


end
