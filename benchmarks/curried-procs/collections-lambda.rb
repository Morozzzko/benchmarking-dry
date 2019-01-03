require 'benchmark/ips'

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(time: 5, warmup: 2)

  sum = ->(a, b) { a + b }
  curried_sum = sum.curry

  plus_two = curried_sum.call(2)

  sample_data = Array.new(100_000) { rand(100) }

  x.report("map: uncurried call") do
    sample_data.map do |x|
      sum.call(2, x)
    end
  end

  x.report("map: curried call") do
    sample_data.map do |x|
      curried_sum.call(2, x)
    end
  end

  x.report("map: partially applied call (block)") do
    sample_data.map do |x|
      plus_two.call(x)
    end
  end

  x.report("map: partially applied call (direct pass)") do
    sample_data.map(&plus_two)
  end

  x.compare!
end
