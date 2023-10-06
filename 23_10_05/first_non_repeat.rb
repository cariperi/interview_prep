# https://www.codewars.com/kata/52bc74d4ac05d0945d00054e/train/ruby

def  first_non_repeating_letter(s)
  # Input: String, any case, i.e. 'sTreSS'
  # Output: String, single character in intial case
  # Assumptions: The strings are all alphabetic character and no special characters or numbers

  # Algorithm:

  return '' if s.empty?

  char_count = Hash.new(0)

  s.chars.each do |char|
    if char.upcase
      char_count[char.downcase] += 1
    else
      char_count[char] += 1
    end
  end

  puts char_count

  s.chars.each do|char|
    if char.upcase
      return char if char_count[char.downcase] == 1
    elsif char.downcase
      return char if char_count[char] == 1
    else
      return ''
    end
  end

end

# TESTS


puts first_non_repeating_letter('a')# 'a'
# puts first_non_repeating_letter('sTreSS') # 'T'
# puts first_non_repeating_letter('stress') # 't'
# puts first_non_repeating_letter('moonmen') # 'e'
# puts first_non_repeating_letter('') # ''
# puts first_non_repeating_letter('aaa') # ''

# TODO:
# Simplify to not iterate twice?
# handle test case on line 44
