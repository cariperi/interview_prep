# https://www.codewars.com/kata/58df8b4d010a9456140000c7

def palindrome(num)
  return "Not valid" unless num.is_a?(Integer) && num > 0

  return 11 if num < 10

  return num if num.to_s == num.to_s.reverse

  i = 1

  while i < num
    return num + i if (num + i).to_s.reverse == (num + i).to_s

    return num - i if (num - i).to_s.reverse == (num - i).to_s

    i += 1
  end
end

# "281".reverse == "281"

# Assumptions
# input is not text
# input is not negative number
# output is not single digit number

# Input
# Can be anything - if it is not a positive integer, return "Not valid"

# Output
# either an integer, or "Not valid" as a string



#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################
puts palindrome(8) #11
puts palindrome(281) #282
puts palindrome(1029) #1001
puts palindrome(1221) #1221
puts palindrome("BGHHGB") #"Not valid"
puts palindrome("11029") #"Not valid"
puts palindrome(-1029) #"Not valid"