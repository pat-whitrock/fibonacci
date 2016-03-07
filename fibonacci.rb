class Fibonacci
  def initialize
    @sequence = Fibonacci::Sequence.new
  end

  def get(count)
    if count == 0
      sequence.numbers
    else
      sequence.add
      get(count - 1)
    end
  end

  private

  attr_reader :sequence
end
