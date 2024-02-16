# CodeWars Kata: ROT13 Cipher
# https://www.codewars.com/kata/530e15517bc88ac656000716

def rot13(string)
  string.bytes.map do |ascii|
    converted = convert_character(ascii, 65, 90)
    final_converted = convert_character(converted, 97, 122)
    final_converted.chr
  end.join
end

def convert_character(ascii, low, high)
  if ascii.between?(low, high)
    ascii += 13
    ascii -=26 unless ascii.between?(low, high)
  end
  ascii
end

# INPUT DATA TYPE
# string

# OUTPUT DATA TYPE
# string

# ASSUMPTIONS
# Preserve case
# String can have non-alphabetical chars, preserve in place and return
# Only converting A-Z (or a-z)
# Only valid ASCII characters are part of the string

# QUESTIONS
# Do we preserve case?

# NOTES

    # iterate through the string
    # for latin alphabet characters, perform the cipher transaction
    # for any other character, skip and move on to the next

    # A: 65
    # Z: 90
    # a: 97
    # z: 122

    #input T: 84
    #output G: 71

    #64 should go to 90
    #96 should go to 122

    # e is 101
    # Gets converted to: r is 114

    # a is 97
    # Gets converted to: n 110

#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

# pp rot13("test") == "grfg"
# pp rot13("Test") == "Grfg"

