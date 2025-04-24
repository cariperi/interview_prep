# Does an array contain all elements from another array?
# https://www.codewars.com/kata/55a6c585c105a2865b000077

def contains_all?(haystack, needle)
	return false if haystack.length < needle.length

	haystack_hash = build_hash(haystack)
	needle_hash = build_hash(needle)

	needle_hash.each do |k, v|
		unless (haystack_hash[k] && haystack_hash[k] >= needle_hash[k])
			return false
		end
	end
	true
end

def build_hash(array)
	hash = {}
	array.each do |element|
		if hash[element]
			hash[element] += 1
		else
			hash[element] = 1
		end
	end
	hash
end

# INPUT
# two arrays
# elements of any data type

# OUTPUT
# boolean value

# QUESTIONS AND ASSUMPTIONS
# could the arrays contain subarrays?
# will return false if a match cannot be found - and in any case where first array's length < second array's length
# if both arrays are empty, we'll return true
# we cannot change / mutate either original array

# PSEUDOCODE
# Creating two hashes, one for each input array
# Keys in the hash are the values / elements in each array
# Values are the number of times each key (element) is repeated
# {1: 1, 2: 2}
# For every key in the "needle" hash:
	# First, check that the key appears in the haystack hash
	# Second, check that the value for that key is less than or equal to haystack[key]



# EXAMPLES AND TESTS - Uncomment to Run

# pp contains_all?([1,2,3], [2,3]) == true
# pp contains_all?([1,2,3], [1,2,2]) == false
# pp contains_all?([1.0,2.0,3.0], [1,2,3]) == false
# pp contains_all?([], []) == true
# pp contains_all?([1], [1,2]) == false

# [1,2,3] contains [2,3]
# [1,2,2,3,3,3] contains [2,3,3]
# [1,2,2,3,3,3] does not contain [2,2,2,3,3] - too many 2's
# [1.0,2.0,3.0] does not contain [1,2,3] - floats are not integers