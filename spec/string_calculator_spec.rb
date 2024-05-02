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

    context 'with unknown amount of numbers' do
        it 'returns the sum' do
          expect(StringCalculator.add('1,2,3,4,5')).to eq(15)
        end
      end
  
    context 'with new lines between numbers' do
        it 'returns the sum' do
          expect(StringCalculator.add("1\n2,3")).to eq(6)
        end
    end

    context 'with negative numbers' do
        it 'throws an exception' do
          expect { StringCalculator.add('1,-2,3') }.to raise_error('negatives not allowed: -2')
        end
    end

    context 'with numbers larger than 1000' do
        it 'ignores them and returns the sum' do
          expect(StringCalculator.add('2,1001,3')).to eq(5)
        end
    end
  end
end
