class Transaction

  attr_reader :balance, :type, :amount, :date
  def initialize(**args)
    @balance = args[:balance]
    @type    = args[:type]
    @amount  = args[:amount]
    @date    = Time.now.strftime "%d/%m/%Y"
  end

end
