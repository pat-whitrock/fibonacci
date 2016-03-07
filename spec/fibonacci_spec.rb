RSpec.describe Fibonacci do
  describe '#initialzie' do
    let(:fibonacci) { Fibonacci.new }

    it 'sets @sequence to a Fibonacci::Sequence' do
      expect(fibonacci.instance_variable_get(:@sequence)).to be_a Fibonacci::Sequence
    end
  end

  describe '#get' do
    let(:fibonacci) { Fibonacci.new }

    it 'returns the first n fibonacci numbers as an array' do
      expect(fibonacci.get(15)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]
    end
  end
end
