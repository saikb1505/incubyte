class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    numbers.gsub!("\n", ',')
    numbers.split(',').map(&:to_i).sum
  end
end
