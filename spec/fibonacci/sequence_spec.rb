RSpec.describe Fibonacci::Sequence do
  describe '#initialize' do
    let(:sequence) { Fibonacci::Sequence.new }

    it 'sets #numbers as an empty array' do
      expect(sequence.numbers).to eq []
    end
  end

  describe '#add' do
    context 'when #numbers is empty' do
      let(:sequence) { Fibonacci::Sequence.new }

      it 'adds a 0 to #numbers' do
        expect {
          sequence.add
        }.to change {
          sequence.numbers
        }.from([]).to([0])
      end
    end

    context 'when #numbers contains 1 value' do
      let(:sequence) { Fibonacci::Sequence.new }

      before do
        sequence.instance_variable_set :@numbers, [0]
      end

      it 'adds a 1 to #numbers' do
        expect {
          sequence.add
        }.to change {
          sequence.numbers
        }.from([0]).to([0, 1])
      end
    end

    context 'when #numbers contains more than 1 value' do
      let(:sequence) { Fibonacci::Sequence.new }

      before do
        sequence.instance_variable_set :@numbers, [0, 1]
      end

      it 'adds the sum of the last two numbers to to #numbers' do
        expect {
          sequence.add
        }.to change {
          sequence.numbers
        }.from([0, 1]).to([0, 1, 1])
      end
    end
  end
end
