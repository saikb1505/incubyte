require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    let(:calculator) { StringCalculator.new }

    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(calculator.add("5")).to eq(5)
    end

    it 'returns the sum of two numbers' do
      expect(calculator.add("6,5")).to eq(11)
    end

    it 'handles any amount of numbers' do
      expect(calculator.add("1,2,3,4,5")).to eq(15)
    end
  end
end
