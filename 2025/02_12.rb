# Sort the Odd
# Codewars: https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/ruby

def sort_array(source_array)
  (1...source_array.length).each do |i|
    next if source_array[i].even?
    k = i
    j = k - 1
    while j >= 0 do
      if source_array[j].even?
        j -= 1
      elsif source_array[k] < source_array[j]
        swap(k, j, source_array)
        k = j
        j -=1
      else
        break
      end
    end
  end
  source_array
end

def swap(k, j, source_array)
  source_array[k], source_array[j] = source_array[j], source_array[k]
end

# ASSUMPTIONS AND QUESTIONS
# do we mutate the array, or return the original?

# INPUT
# array of non-negative (?) integers

# OUTPUT
# array of same size: odds sorted in ascending order, evens in same position

# TESTS

# [*5, *3, 2, 8, 1, 4, 11]
# inner = 1
# outer = 0
# [3, 5, 2, 8, 1, 4, 11]
# [3, 1, 2, 8, 5, 4, 11] <-
# [1, 3, 2, 8, 5, 4, 11]

# for i = 1, i < n, i++
#   is i odd? if no, next i
#   j = i - 1
#   while j >= 0
#     if j is even? j -= 1 break out of while loop
#     do we need to swap? if yes, swap
#     j -= 1


pp sort_array([5, 3, 2, 8, 1, 4, 11]) == [1, 3, 2, 8, 5, 4, 11]
pp sort_array([2, 22, 37, 11, 4, 1, 5, 0]) == [2, 22, 1, 5, 4, 11, 37, 0]
pp sort_array([1, 111, 11, 11, 2, 1, 5, 0]) == [1, 1, 5, 11, 2, 11, 111, 0]
pp sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
pp sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
pp sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
pp sort_array([]) == []
pp sort_array([19]) == [19]
pp sort_array([2]) == [2]
pp sort_array([7,5]) == [5,7]
