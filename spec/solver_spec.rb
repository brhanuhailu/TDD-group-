require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  describe '#factorial' do
    context 'When the factorial method is called' do
      it 'returns 1 when given 0' do
        subject { described_class.new }
        expect(subject.factorial(0)).to eq(1)
      end

      it 'returns 1 when given 1' do
        subject { described_class.new }
        expect(subject.factorial(1)).to eq(1)
      end

      it 'returns 120 when given 5' do
        subject { described_class.new }
        expect(subject.factorial(5)).to eq(120)
      end

      it 'raises an error when given a negative number' do
        subject { described_class.new }
        expect { subject.factorial(-1) }.to raise_error(RuntimeError)
      end
    end
  end
  describe '#reverse' do
    context 'When the reverse method is called' do
      it 'return an empty string when given an empty string' do
        subject { described_class.new }
        expect(subject.reverse('')).to eq('')
      end

      it 'return the same string when given a single character string' do
        subject { described_class.new }
        expect(subject.reverse('a')).to eq('a')
      end

      it 'return the reversed string when given a multi-character string' do
        subject { described_class.new }
        expect(subject.reverse('hello')).to eq('olleh')
      end
    end
  end
  describe '#fizzbuzz' do
    context 'When the fizzbuzz method is called' do
      it "return 'fizz' when given 3" do
        subject { described_class.new }
        expect(subject.fizzbuzz(3)).to eq('fizz')
      end

      it "return 'buzz' when given 5" do
        subject { described_class.new }
        expect(subject.fizzbuzz(5)).to eq('buzz')
      end

      it "return 'fizzbuzz' when given 15" do
        subject { described_class.new }
        expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
      end

      it 'returns the number when given a number not divisible by 3 or 5' do
        subject { described_class.new }
        expect(subject.fizzbuzz(7)).to eq(7)
      end
    end
  end
end
