# Three Details
# Codewars: https://www.codewars.com/kata/58c212c6f130b7c4660000a5/train/ruby
# Liveshare: https://prod.liveshare.vsengsaas.visualstudio.com/join?4F629C5B195BFE69B75D0759DDD21188EFF7


def three_details(n)
  return 0 if n == 4



  n.odd? ? 1 : 2
  # return 1 if n is odd
  # return 2 if n is even
end

# INPUT
# integer, greater or equal to 3

# OUTPUT
# integer

# ASSUMPTIONS AND QUESTIONS
# answers will only be 0, 1, or 2

# TESTS (uncomment to run)

# pp three_details(3) == 1
# pp three_details(6) == 2
# pp three_details(7) == 1
# pp three_details(4) == 0
# pp three_details(10) == 2
# pp three_details(15) == 1

pp three_details(48) == 16
pp three_details(11) == 3
pp three_details(29) == 3

# 1 2 3 4 5 6 7 8 9 10 11

#Option A: 1 3 5 7 9 11
#Option B: 2 4 6 8 10

# next numbering round

# Option A
# 1 3 5 7 9 11 becomes renumbered 1 2 3 4 5 6
# 1 3 5 - +1
# 2 4 6- +1

# Option B
# 2 4 6 8 10 becomes renumbered 1 2 3 4 5
# 1 3 5 - +1
# 2 4
