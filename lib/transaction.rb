class Transaction

  attr_reader :balance, :type, :amount

  def initialize(**args)
    @balance = args[:balance]
    @type = args[:type]
    @amount =args[:amount]
  end


end
