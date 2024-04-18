# CodeWars Kata: Move Zeros
# https://www.codewars.com/kata/52597aa56021e91c93000cb0

def move_zeros(arr)
  return arr if arr.empty?

  first_zero = 0
  curr = 0
  seen_first_zero = false

  arr.each_with_index do | elem, curr |
    if elem.zero? && !seen_first_zero
      first_zero = curr
      seen_first_zero = true
    elsif elem.nonzero? && seen_first_zero
      arr[curr], arr[first_zero] = arr[first_zero], arr[curr]
      first_zero = first_zero + 1
    end
  end

  arr
end

# INPUT DATA TYPE
# 1 array of elements

# OUTPUT DATA TYPE
# array of the same length as input array

# ASSUMPTIONS
# assume we only care about zero, and no other elements / data types beyond that integer
# zeros do no need to maintain their order

# QUESTIONS
# will the input array always have a zero?
# can an array be empty?
# what are the min / max input array sizes?


#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

# pp move_zeros([1,2,0,1,0,1,0,3,0,1]) == [1,2,1,1,3,1,0,0,0,0]
