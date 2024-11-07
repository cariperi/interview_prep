# https://www.codewars.com/kata/598ee7b6ec6cb90dd6000061
# Write a function that returns the count of characters that have to be removed in order to get a string with no consecutive repeats

def count_repeats(txt)
  # remove whitespace with regex
  # downcase everything
  txt.gsub!(/\s+/, "")
  txt.downcase!

  # guard clause for empty/single chart strings
  return 0 if txt.length <= 1

  # initialize a counter starting at 0
  chars_to_remove = 0
  idx = 0
  while idx < txt.length - 2
    chars_to_remove += 1 if txt[idx] == txt[idx + 1]
    idx += 1
  end
  chars_to_remove
end

# INPUT
# single string

# OUTPUT
# non-negative integer

# ASSUMPTIONS AND QUESTIONS
# can we assume all letters are lowercase? NO - let's try a sanitize step
# assume we can have non-alphabetical chars too
# assume it is a single string input
# do we need to guard for empty strings or single char strings? YES - early return with "0"
# assume we will not get input with multiple consecutive whitespace chars

# TESTS

# pp count_repeats('abbc') == 1
# pp count_repeats('abbcca') == 2
# pp count_repeats('ab cca') == 1
# pp count_repeats('aaa$ &&') == 2


# EDGE CASE
# 'abdccc'
# 'abdccc'

# 'abdcccc'

# here is a regex: .gsub(/\s+/, "")