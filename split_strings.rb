### CHALLENGE ###

# https://www.codewars.com/kata/515de9ae9dcfc28eb6000001

### SOLUTION 1: Without Regex ###

def solution(str)
  str.concat("_") if str.length.odd?
  str.chars.each_slice(2).map(&:join)
end

### SOLUTION 2: With Regex ###

def solution(str)
  str.concat("_") if str.length.odd?
  str.scan(/\w{2}/)
end

### Test Cases ###

p solution("abcdef") # ["ab", "cd", "ef"]
p solution("abcdefg") # ["ab", "cd", "ef", "g_"]
p solution("") # []