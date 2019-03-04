class Calculator
  def add(num_1, num_2)
    return num_1 + num_2
  end
  def subtract(num_1, num_2)
    return num_1 - num_2
  end
  def multiply(num_1, num_2)
    return num_1 * num_2
  end
  def divide(num_1, num_2)
    return num_1 / num_2
  end
  def power(num_1, num_2)
    return num_1 ** num_2
  end
  def add(num_1, num_2)
    return num_1 + num_2
  end
end

calculator = Calculator.new 

puts "Testing the addd method"
if calculator.add(1,3) == 4
  puts "Test passes"
else
  puts "Failure"
end


RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1,3)).to eq(4)
    end
  end

  describe '#subtract' do
  end
end