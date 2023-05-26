class Solver
  def factorial(number)
    if number.zero?
      1
    elsif number.negative?
      raise 'Cannot calculate factorial of negative number'
    else
      number * factorial(number - 1)
    end
  end

  def reverse(string)
    if string.empty?
      ''
    else
      string[-1] + reverse(string[0..-2])
    end
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
