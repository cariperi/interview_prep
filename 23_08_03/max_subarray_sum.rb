def max_sequence(arr)
  return 0 if arr.empty? || arr.all?(&:negative?)
  return arr.sum if arr.all?(&:positive?)

  (1...arr.length).reduce(0) do |max_sum, number|
    arr.each_cons(number) do |subarray|
      max_sum = [max_sum, subarray.sum].max
    end
    max_sum
  end
end

# finding the maximum sum of a contiguous subsequence in an array or list of integers


# puts max_sequence([]) #0
# puts max_sequence([11, 2]) #13
# puts max_sequence([-32]) #0

# puts max_sequence([-2, 2, 2, 2]) #6

# puts max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) #12
# puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #6