# https://www.codewars.com/kata/587731fda577b3d1b0001196
# Write a method (or function, depending on the language) that converts a string to camelCase
# That is, all words must have their first letter capitalized and spaces must be removed
# "camel case word" --> "CamelCaseWord"

class String
  def camelcase
    #check for first character
    #look at blank spaces, check for char immediately after blank space
    #upcase that character

    # use the strip method to clean whitespaces
    # seperate the string into an array of substrings
    # capitalize each substring (first letter only) with map over the array
    # join the resulting array to output a string with no spaces

    array_of_words = strip.split(' ')
    array_of_words.map { |word| word.capitalize }.join
  end
end

# INPUT
# string as an instance

# OUTPUT
# return a string

# ASSUMPTIONS AND QUESTIONS
# always calling on a string
# what should the return value be if the instance is not a string class? EX. integer?
# what should we return if we are calling the method on an empty string?
# what if the instance string we call this method on is already camel cased?

# TESTS - UNCOMMENT TO RUN

pp 'test case'.camelcase == 'TestCase'
pp 'camel case method'.camelcase == 'CamelCaseMethod'
pp 'say hello '.camelcase == 'SayHello'
pp ' camel case word'.camelcase == 'CamelCaseWord'

# EDGE CASE
# pp 'TestCase'.camelcase == 'TestCase'
# pp 'TestCase'.camelcase