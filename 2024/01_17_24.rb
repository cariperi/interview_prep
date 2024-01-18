# https://www.codewars.com/kata/5711fc7c159cde6ac70003e2

def find_zero_sum_groups(arr, n)
  # Early return: check if anything in the array
  return "No elements to combine" if arr.empty?
  # Early return: check if array.length is less than n?
  return "No combinations" if arr.length < n
    # or include as part of "no combinations" code?
  # open eventual return array
  # zero_sum_combos = []
    # order the array, remove repeat numbers
  arr.uniq!
  arr.sort!

  potential_combos = arr.combination(n).to_a
  # Open an iteration: start at first element,
  # push all combos with sum == 0 into final result array
  #  using .find_all or .select
  zero_sum_combos = potential_combos.select {|combo| combo.sum == 0 }

    # if return array.length == 0 ---- "No combinations"
  return "No combinations" if zero_sum_combos.length == 0
    # if return array.length == 1 ----- call .flatten
  return zero_sum_combos.flatten if zero_sum_combos.length == 1
    # else return the nested return array
  zero_sum_combos
end

# INPUT DATA TYPE

  # FIRST: array of integers, positive or negative, unordered, empty array is possible
  # SECOND: integer, always postive, nonzero

# OUTPUT DATA TYPE
  # Array
  # Nested array with arrays as elements?
  # String - 2 possible options?

# ASSUMPTIONS
  # Output cannot have duplicate arrays, even in different order
  # Individual elements are ordered smallest to largest, so are subarrays

# QUESTIONS
  # Will the integers in the array always be single digit?
  # What does "order" mean for the output? Assumption:  in order by digits value, increasing from lowest to highest?
  # Clarification: Looks like return values cannot contain the repeat numbers (can't have [-2, 1, 1])?
  # Is 0 itself excluded from "positive and negative integers" (can you have [-3, 0, 3] as a potential solution?)

#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################


p find_zero_sum_groups([1, -1, 2, 3, -2], 3) #[-2, -1, 3]
p find_zero_sum_groups([1, -1, 2, 3, -2, 4, 5, -3 ], 3) #[[-3, -2, 5], [-3, -1, 4], [-3, 1, 2], [-2, -1, 3]]
p find_zero_sum_groups([1, -1, 2, 3, -2, 4, 5, -3, -3, -1, 2, 1, 4, 5, -3 ], 3) #[[[-3, -2, 5], [-3, -1, 4], [-3, 1, 2], [-2, -1, 3]]
p find_zero_sum_groups([1, 1, 2, 3], 2) #"No combinations"
p find_zero_sum_groups([], 2) #"No elements to combine"