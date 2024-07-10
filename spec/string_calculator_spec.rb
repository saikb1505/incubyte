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
  end
end
