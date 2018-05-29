require 'dry-monads'
require 'dry-transaction'

module DoVsTransaction
  class TransactionLarge
    include Dry::Transaction
    include Dry::Monads

    step :times_two
    step :plus_two
    step :plus_two
    step :plus_two
    step :check_result
    step :plus_two
    step :plus_two
    step :plus_two
    step :plus_two

    def check_result(value)
      if value > 1000
        Failure("it exceeded 100")
      else
        Success(value)
      end
    end

    def plus_two(input)
      Success(input + 2)
    end

    def times_two(input)
      Success(input * 2)
    end
  end
end