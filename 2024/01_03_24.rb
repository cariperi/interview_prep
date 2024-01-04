# https://www.codewars.com/kata/57591ef494aba64d14000526

# Example with n = 2
#On day n the number of katas done by John should be n minus the number of katas done by Rita at day t, t being equal to the number of katas done by John himself at day n - 1
def john(n)
  return [0] if n.zero?
  counter = 1
  array = [0]

  while counter < n do
    array << counter - rita(array.last).last
    counter += 1
  end
  p "n #{n}. in john"
  p array
  # return array
  # for n = 2
  # n - rita(john(n - 1))
  # 2 - rita(john(1))
  # 2 - rita(0)
  # 2 - 1
  # 1

  # for n = 3
  # n - rita(john(n - 1))
  # 3 - rita(john(2))
  # 3 - rita(1)
  # 3 - 1
  # 2
end

# rita(n)  = n - john(rita(n-1))
# On day n the number of katas done by Rita should be n minus the number of katas done by John at day t, t being equal to the number of katas done by Rita herself at day n - 1
def rita(n)
  return [1] if n.zero?
  counter = 1
  array = [1]

  while counter < n do
    # p john(array.last).last
    array << counter - john(array.last).last
    counter += 1
  end
  p "n #{n}. in rita"
  p array
  # return array
end

# rita(6) = [1, 1, 2, 2, 3, 3]
# john(6) = [0, 0, 1, 2, 2, 3]

def sum_john(n)
  # your code
end

def sum_rita(n)
  # your code
end


# INPUT DATA TYPE

# postive (incl. 0) integer, number of days

# OUTPUT DATA TYPE
# name(n) -> array of integers
# sum_name(n) -> integer

#ASSUMPTIONS

# QUESTIONS


#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

# puts rita(6) #[1, 1, 2, 2, 3, 3]
john(6) #[0, 0, 1, 2, 2, 3]
