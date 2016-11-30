class Printer

  HEADER = "date       || credit || debit   || balance\n"

  def print_statement(account_history)
    rows = []
    account_history.each do |transaction|
      single_row = format_row(transaction)
      rows.push(single_row)
    end
    puts HEADER
    puts rows.reverse.join
  end

  def format_row(transaction)
    date = transaction.date
    credit = transaction.type == :credit ? transaction.amount : "        "
    debit = transaction.type == :debit ? transaction.amount : "        "
    balance = transaction.balance
    single_row  = "#{date}" + "|| #{credit}" + "|| #{debit}" + "|| #{balance}\n"
  end

end
