class Fibonacci
  class Sequence
    attr_reader :numbers

    def initialize
      @numbers = []
    end

    def add
      numbers << case numbers.length
      when 0
        0
      when 1
        1
      else
        numbers[-1] + numbers[-2]
      end
    end
  end
end
