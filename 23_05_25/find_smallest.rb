# https://www.codewars.com/kata/573992c724fc289553000e95

def smallest(n)
  number = n.digits.reverse
  d = number.min
  i = number.find_index(d)

  if i.zero?
    number_without_first = number[1..-1]
    d = number_without_first.min
    i = number.find_index(d)
  end

  number.delete_at(i)

  smallest_number = n
  j = 0

  (number.length + 1).times do |index|
    number.insert(index, d)
    if number.join.to_i <= smallest_number
      smallest_number = number.join.to_i
      j = index
    end
    number.delete_at(index)
  end

  [smallest_number, i, j]
end

# p smallest(261235) #[126235, 2, 0]
# p smallest(209917) #[29917, 0, 1]
# p smallest(285365) #[238565, 3, 1]
# p smallest(269045) #[26945, 3, 0]
# p smallest(296837) #[239687, 4, 1]