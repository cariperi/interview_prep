# CodeWars Kata: Delete Occurrences
# https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/ruby

def delete_nth(order,max_e)
  #your code here
  counts = Hash.new(0)
  res = []
  order.each do |o|
    res << o if counts[o] < max_e
    counts[o] += 1
  end
  res
end


# INPUT DATA TYPE
# array of integer values
# single integer

# OUTPUT DATA TYPE
# array of numbers, in same order as input array (minus removed numbers)

# ASSUMPTIONS
# integer is zero or positive
# array contains only integer values
# if input array is empty, return an empty array?

# QUESTIONS
# how big can numbers be?
# what is the max size of the array?

#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

# pp delete_nth([20,37,20,21], 1) == [20,37,21]
# pp delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]
# pp delete_nth([12,39,19,39,39,19,12], 1) == [12, 39, 19]
# pp delete_nth([], 2) == []
# pp delete_nth([12,39,19,39,39,19,12], 0) == []
