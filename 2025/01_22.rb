# Array Helpers
# Codewars: https://www.codewars.com/kata/525d50d2037b7acd6e000534

class Array
  def square
    # square() must return a copy of the array, containing all values squared
    @square ||= map { |num| num * num }
  end

  def cube
    # cube() must return a copy of the array, containing all values cubed
    square.each_with_index.map { |sq, idx| sq * self[idx] }
  end

  def sum
    # total = 0
    # each { |num| total += num }
    # total

    @sum ||= reduce(:+)

    # @sum ||= reduce do |total, n|
    #   puts "Total: #{total} || n: #{n}"
    #   total + n
    # end
  end

  def average
    # average() must return the average of all array values
    # (note: the empty array is not tested in Ruby!)
    sum / length.to_f
  end

  def even
    # even() must return an array of all even numbers
    select(&:even?)
  end

  def odd
    # odd() must return an array of all odd numbers
    select(&:odd?)
  end
end

# ASSUMPTIONS AND QUESTIONS
# what precision should average round to? should it be rounded?
# for now we'll assume unrounded
# no need to handle empty arrays in average method, can assume input
# no mutating the original array

# TIL: num * num more performant than using ** notation

# TESTS / EXAMPLE

numbers = [1, 2, 3, 4, 5]
# numbers = [62, 26, 26, 38, 12, 48, 28, 32, 58, 86, 25, 73, 63, 29, 3, 3, 37, 83, 51, 57]

numbers.square()  # must return [1, 4, 9, 16, 25]
numbers.cube()    # must return [1, 8, 27, 64, 125]
numbers.sum()     # must return 15
numbers.average() # must return 3
numbers.even()    # must return [2, 4]
numbers.odd()     # must return [1, 3, 5]

# Codewars test output:
# Test Passed: Value == [3844, 625, 5329, 3969, 676, 676, 1444, 841, 144, 9, 2304, 9, 1369, 6889, 784, 2601, 1024, 3364, 3249, 7396]
# Test Passed: Value == [238328, 15625, 389017, 250047, 17576, 17576, 54872, 24389, 1728, 27, 110592, 27, 50653, 571787, 21952, 132651, 32768, 195112, 185193, 636056]
# Test Passed: Value == [62, 26, 26, 38, 12, 48, 28, 32, 58, 86]
# Test Passed: Value == [25, 73, 63, 29, 3, 3, 37, 83, 51, 57]
# sum() returned wrong result -  Expected: 840, instead got: 829
# Test Passed: Value == 41