# CodeWars Kata: Move Zeros
# https://www.codewars.com/kata/52597aa56021e91c93000cb0

def move_zeros(arr)
  # Code here
  return arr if arr.empty?
  first_zero = 0
  seen_first_zero = false
  curr = 0
  while curr < arr.length
    if arr[curr] == 0
      unless seen_first_zero
        first_zero = curr
        seen_first_zero = true
      end
      curr = curr + 1
    else
      if seen_first_zero
        arr[curr], arr[first_zero] = arr[first_zero], arr[curr]
        curr, first_zero = curr + 1, first_zero + 1
      else
        curr = curr + 1
      end
    end
    puts "Array is now #{arr}"
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

pp move_zeros([1,2,0,1,0,1,0,3,0,1]) == [1,2,1,1,3,1,0,0,0,0]
# pp move_zeros([1,2,0,1,0,1,0,3,0,1])

# pp move_zeros([0, 1, 2])
# pp move_zeros([1, 2, 0])

# [0, 1, 2]

# first pass: 0
# see that we're on zero
# keep first_zero pointer where it is
# increment non-zero point to next index (1)
# set seen_first_zero to true

# next pass:
# non-zero pointer is at 1
# flip zero and element at non-zero pointer
# [1, 0, 2]
# zero-pointer sets to value of current pointer
# current pointer sets to next index (2)
# [1, 0, 0, 2]
# curr, zero = curr + 1, curr