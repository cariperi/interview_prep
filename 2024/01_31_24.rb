# CodeWars Kata: The Supermarket Queue
# https://www.codewars.com/kata/57b06f90e298a7b53d000a86

def queue_time(customers, n)
  #your code here
  # check if n = 1, return a sum of the customer array
  return customers.sum if n == 1
  # check if array is empty and return zero
  return 0 if customers.empty?
  # if n > array length, return the max customer value
  return customers.max if n > customers.length
  # have array where each element represents queue time for that till
  tills = Array.new(n, 0)
  customers.each do |customer|
    open_till = tills.index(tills.min)
    tills[open_till] += customer
  end
  # some logic to do that - send next customer to shortest / lowest sum of current subarrays
  # return the max value from the tills array
  tills.max
end

# INPUT DATA TYPE
  #1 - array, can have postive integer values
  #2 - positive integer, number of registers

# OUTPUT DATA TYPE
  # single integer value
  # represents TOTAL time for all customers to check out

# ASSUMPTIONS
  # assuming all array integers are nonzero - someone can't checkout out in zero minutes

# QUESTIONS
  # HOLD: would we want to use min heap strategy to solve this?


#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

p queue_time([], 1) #0
p queue_time([5], 1) #5
p queue_time([5,3,4], 1) #12
p queue_time([10,2,3,3], 2) #10
p queue_time([2,3,10], 2) #12
p queue_time([1,2,3,4,5], 100) #5
p queue_time([1,7,3,9,2,7,3,8,2,4], 3) #18
p queue_time([1,3,5,8,9,4,2,6,7,4,3,7,8,5,2,7,2,4,8,5,3,2,4,6,7], 5) #28?