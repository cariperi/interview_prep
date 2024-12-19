# Steps in Primes
# Codewars: https://www.codewars.com/kata/5613d06cee1e7da6d5000055

# For example from 2 to 3 the step is 1. From 3 to 5 the step is 2. From 7 to 11 it is 4.

# g - step_size  (integer >= 2)
# m - search_start (integer >= 2)
# n - search_end (integer >= m)

def step(step_size, search_start, search_end)
  # your code
  arr = (search_start..search_end).to_a
  arr.each_with_index do |left_val, index|
    return if index + step_size > arr.length - 1 # len 10, stop at last right = 9 last left = 7
    right_val = arr[index + step_size]
    return [left_val, right_val] if prime?(left_val) && prime?(right_val)
  end

end

def prime?(num)
  (2..Math.sqrt(num).floor).each do |i|
    return false if i != num && num % i == 0
  end
  true
end

# INPUT
# integers

# OUTPUT
# array with two integers
# return empty array or nil if no pair found?

# ASSUMPTIONS AND QUESTIONS
# how frequently will we run this function? (performance)
# might like to start with memoizing whether a number is prime...

# TESTS + EXPECTED OUTPUT (uncomment to run)

# pp step(2,100,110) #[101, 103]
# pp step(4,100,110) #[103, 107]
# pp step(6,100,110) #[101, 107]
# pp step(8,300,400) #[359, 367]
# pp step(10,300,400)  #[307, 317]
# pp step(2, 2, 2)

# (2..10).each do |x|
#   pp [x, prime?(x)]
# end