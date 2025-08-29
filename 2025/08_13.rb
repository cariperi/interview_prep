# String Scramble
# https://www.codewars.com/kata/5822d89270ca28c85c0000f3

def scramble(str, arr)
  # add code here
  result = Array.new(arr.length)

  str.chars.each_with_index do |char, index|
    result[arr[index]] = char
  end

  result.join
end


# INPUT
# string
# array of integers (indices)

# OUTPUT
#string

# QUESTIONS AND ASSUMPTIONS
# Is it ok to use auxillary space? (Assume yes)
# All indices are valid
# All string chars are valid chars

# PSEUDOCODE
# instantiate an empty array of length == string (or array input)
# iterate over the string values (string.chars.each_with_index) --> better approach because IF we wanted to extend to unicode chars, in Ruby these chars are not a fixed length
# each loop, have the char and the index i, new arr index i' from array with i
# then we'll insert the char into the new array at i'
# last step is join the new array to make a string and return

# EXAMPLES AND TESTS - Uncomment to Run
  pp scramble('abcd', [0,3,1,2]) == 'acdb'
  pp scramble('sc301s', [4,0,3,1,5,2]) == "c0s3s1"
  pp scramble('bskl5', [2,1,4,3,0]) == "5sblk"