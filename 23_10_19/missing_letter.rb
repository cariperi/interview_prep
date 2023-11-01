# https://www.codewars.com/kata/5839edaa6754d6fec10000a2

def find_missing_letter(arr)
  # - get ord value for each character -
  # iterate over the array and assign a ord value for each character
  # sum the result of the integers
  # expected = [a, b, c] = 6
  # input = [a, c] = 4

  string_range_array = (arr[0]..arr[-1]).to_a
  string_range_array - arr
end

#input: array
#output: string with single charz




#assumptions:
# always consecutive, a->z
# one case (upper OR lower)
# always exactly 1 missing
# english alphabet

#questions:
# could there be repeated characters?



#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

puts find_missing_letter(["a","b","c","d","f"]) #"e"
puts find_missing_letter(["O","Q","R","S"]) #"P"
puts find_missing_letter(["b","d"]) #"c"
puts find_missing_letter(["a","b","d"]) #"c"
puts find_missing_letter(["b","d","e"]) #"c"