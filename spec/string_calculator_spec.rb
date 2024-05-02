require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    context 'with empty string' do
      it 'returns 0' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'with one number' do
        it 'returns the number itself' do
          expect(StringCalculator.add('1')).to eq(1)
        end
    end

    context 'with two numbers separated by commas' do
        it 'returns the sum' do
          expect(StringCalculator.add('1,2')).to eq(3)
        end
    end
  end
end
