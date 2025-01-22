# Array Helpers
# Codewars: https://www.codewars.com/kata/525d50d2037b7acd6e000534

class Array
  def square
    # square() must return a copy of the array, containing all values squared
  end

  def cube
    # cube() must return a copy of the array, containing all values cubed
  end

  def average
    # average() must return the average of all array values
    # (note: the empty array is not tested in Ruby!)
  end

  def sum
    # sum() must return the sum of all array values
  end

  def even
    # even() must return an array of all even numbers
  end

  def odd
    # odd() must return an array of all odd numbers
  end
end


# ASSUMPTIONS AND QUESTIONS

# TESTS / EXAMPLE

numbers = [1, 2, 3, 4, 5]

numbers.square()  # must return [1, 4, 9, 16, 25]
numbers.cube()    # must return [1, 8, 27, 64, 125]
numbers.average() # must return 3
numbers.sum()     # must return 15
numbers.even()    # must return [2, 4]
numbers.odd()     # must return [1, 3, 5]