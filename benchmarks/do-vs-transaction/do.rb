require 'dry-monads'

module DoVsTransaction
  class Do
    include Dry::Monads::Do.for(:call, :plus_two, :conditional_exit, :times_two)
    include Dry::Monads

    def call(value)
      multiplied = yield times_two(value)

      if multiplied > 100
        yield Failure("it exceeded 100")
      end

      yield plus_two(multiplied)
    end

    def plus_two(input)
      Success(input + 2)
    end

    def times_two(input)
      Success(input * 2)
    end
  end
end