require './lib/transaction'
require './lib/printer'

class Account

  DEFAULT_BALANCE = 0

  def initialize(**args)
    @balance = args[:balance] || DEFAULT_BALANCE
    @printer = Printer.new()
    @account_history = []
  end

  def deposit(amount)
    update_account(amount)
    transaction = Transaction.new(amount: amount, type: :credit, balance: @balance)
    @account_history.push(transaction)
  end

  def withdraw(amount)
    update_account(-amount)
    transaction = Transaction.new(amount: amount, type: :debit, balance: @balance)
    @account_history.push(transaction)
  end

  def print_statement
    @printer.print_statement(@account_history)
  end

  private

  def update_account(amount)
    @balance += amount
  end

end
