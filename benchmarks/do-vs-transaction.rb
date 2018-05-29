require_relative 'do-vs-transaction/do'
require_relative 'do-vs-transaction/transaction'
require_relative 'do-vs-transaction/do_large'
require_relative 'do-vs-transaction/transaction_large'
require 'benchmark/ips'

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(time: 5, warmup: 2)

  operation_do = DoVsTransaction::DoLarge.new
  operation_transaction = DoVsTransaction::TransactionLarge.new

  x.report("do-notation: happy") do
    operation_do.call(25)
  end

  x.report("do-notation: failure") do
    operation_do.call(75)
  end

  x.report("transaction: happy") do
    operation_transaction.call(25)
  end

  x.report("transaction: failure") do
    operation_transaction.call(75)
  end

  x.compare!
end