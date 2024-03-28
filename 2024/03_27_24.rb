# CodeWars Kata: Back and Forth and Reverse
# https://www.codewars.com/kata/60cc93db4ab0ae0026761232

# def arrange(s)
#     # empty array T to collect stuff
#     t = []
#     # copy s and reassign to a "new" variable that we can mutate
#     elements = s.dup

#     while !elements.empty? do
#       t << elements.shift
#       break if elements.empty?
#       t << elements.pop
#       elements.reverse!
#     end
#     # each loop as long as "s stand-in" contains elements
#         # remove first and last elements of "s standin" and push to T
#         # Reverse "s stand-in"
#     # return T
#     t
# end

def arrange(s)
    # empty array T to collect stuff
    t = []
    # first loop... index[0] and index[-1]
    # second loop... index[1] and index[-2]
    i = 1
    while t.length != s.length do
			if i.odd?
				t << s[i-1]
				break if t.length == s.length
				t << s[0-i]
			else
				t << s[0-i]
				break if t.length == s.length
				t << s[i-1]
			end
      i += 1
    end
    t
end


# INPUT DATA TYPE
# an array s of integers, or can be empty

# OUTPUT DATA TYPE
# an array of elements, with same elements and same size as original array s

# ASSUMPTIONS
# we can make our changes to an "s" copy array but not the original value?
# function should / could work regardless of data type of elements in s

# QUESTIONS
# what does it mean not to mutate the array s?

#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

pp arrange([1,2,3,4,5,6]) == [1,6,5,2,3,4]
pp arrange([1,2]) == [1,2]
pp arrange([4, 3, 2]) == [4, 2, 3]
pp arrange([9, 7, -2, 8, 5, -3, 6, 5, 1]) == [9, 1, 5, 7, -2, 6, -3, 8, 5]
pp arrange([1]) == [1]
pp arrange([2, 4, 3, 4]) == [2, 4, 3, 4]
pp arrange([]) == []

# def arrange_modified(s)
#   return s if s.length <= 2
#   # empty array T to collect stuff
#   t = []
#   first = 0
#   last = s.length - 1
#   reverse = false
#   # copy s and reassign to a "new" variable that we can mutate
#   # elements = s.dup

#   until s.length == t.length do
#     if reverse
#       t << s[last]
#       break if s.length == t.length
#       t << s[first]
#     else
#       t << s[first]
#       break if s.length == t.length
#       t << s[last]
#     end

#     first += 1
#     last -= 1
#     reverse = !reverse
#   end

#   t
# end

# pp arrange_modified([1,2,3,4,5,6]) == [1,6,5,2,3,4]
# pp arrange_modified([1,2]) == [1,2]
# pp arrange_modified([4, 3, 2]) == [4, 2, 3]
# pp arrange_modified([9, 7, -2, 8, 5, -3, 6, 5, 1]) == [9, 1, 5, 7, -2, 6, -3, 8, 5]
# pp arrange_modified([1]) == [1]
# pp arrange_modified([2, 4, 3, 4]) == [2, 4, 3, 4]
# pp arrange_modified([]) == []