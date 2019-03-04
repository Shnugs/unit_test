require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def square_root(number)
    return Math.sqrt(number)
  end

  def flip_sign(number)
    return number * -1
  end

  def percent(number)
    return number / 100
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1, 3)).to eq(4)
    end
    it 'should return the a negative number when given 2 negatives' do
      calculator = Calculator.new 
      expect(calculator.add(-1, -4)).to eq(-5)
    end
  end

  describe '#subtract' do 
    it 'should return the difference of two numbers' do 
      calculator = Calculator.new
      expect(calculator.subtract(5, 3)).to eq(2)
    end
    it 'should return the difference of two numbers even into negatives' do 
      calculator = Calculator.new
      expect(calculator.subtract(2, 9)).to eq(-7)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do 
      calculator = Calculator.new
      expect(calculator.multiply(3, 7)).to eq(21)
    end
    it 'should return a negative when one of the numbers is negative' do 
      calculator = Calculator.new 
      expect(calculator.multiply(-3, 7)).to eq(-21)
    end
    it 'should return a positive when both numbers are negative' do 
      calculator = Calculator.new 
      expect(calculator.multiply(-1, -2)).to eq(2)
    end
  end

  describe '#divide' do 
    it 'should return the quotient of two numbers' do 
      calculator = Calculator.new 
      expect(calculator.divide(6, 2)).to eq(3)
    end
  end

  describe '#square' do 
    it 'should return the square of the given number' do 
      calculator = Calculator.new 
      expect(calculator.square(5)).to eq(25)
    end
  end

  describe '#power' do 
    it 'should return a number to the power of the second number' do 
      calculator = Calculator.new 
      expect(calculator.power(10, 2)).to eq(100)
    end
  end

  describe '#square_root' do 
    it 'should return the square root of the given number' do 
      calculator = Calculator.new 
      expect(calculator.square_root(100)).to eq(10)
    end
  end

  describe '#flip_sign' do 
    it 'should change the sign from positive to negative' do
      calculator = Calculator.new 
      expect(calculator.flip_sign(100)).to eq(-100)
    end
    it 'should change the sign from negative to positive' do
      calculator = Calculator.new 
      expect(calculator.flip_sign(-10)).to eq(10)
    end
  end

  describe '#percent' do
    it 'should move the decimal 2 places to the left' do 
      calculator = Calculator.new 
      expect(calculator.percent(100)).to eq(1) 
    end
  end
end