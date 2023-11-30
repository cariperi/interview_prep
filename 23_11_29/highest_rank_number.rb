# https://www.codewars.com/kata/5420fc9bb5b2c7fd57000004
def highest_rank(arr)
  hash = Hash.new(0)
  arr.each do |num|
    hash[num] += 1
  end
  hash
end

def highest_rank2(arr)
  frequencies = arr.reduce(Hash.new(0)) do |hash, item|
    hash[item] += 1
    hash
  end.max_by { |k, v| [v, k] }.first
end

def highest_rank3(arr)
  frequencies = arr.reduce(Hash.new(0)) do |hash, item|
    hash[item] += 1
    hash
  end

  max_keys = []
  max_value = frequencies.values.max
  frequencies.each do |k, v|
    max_keys << k if v == max_value
  end
  max_keys.max
end



# INPUT DATA TYPE
# array of integers

# OUTPUT DATA TYPE
# integer

#ASSUMPTIONS
# array will never be empty
# all array elements will be integers
# storing the counts in a hash - key is integer, value is count

# QUESTIONS
# will the array only contain (positive) integers?

#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

# puts highest_rank([10, 12, 8, 12, 7, 6, 4, 10, 12, 10]) #12
# puts highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) #12
# puts highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) #3
