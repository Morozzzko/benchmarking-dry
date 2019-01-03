require 'benchmark/ips'

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(time: 5, warmup: 2)

  sum = ->(a, b) { a + b }
  curried_sum = sum.curry

  plus_two = curried_sum.call(2)

  x.report("uncurried call (lambda)") do
    sum.call(2, 2)
  end

  x.report("curried call (lambda)") do
    curried_sum.call(2, 2)
  end

  x.report("partially applied call (lambda)") do
    plus_two.call(2)
  end

  x.compare!
end
