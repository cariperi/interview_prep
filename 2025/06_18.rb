# Playing with Passphrases
# https://www.codewars.com/kata/559536379512a64472000053

def play_pass(str, n)
  #your code
  new_password = []
  str.each_char |char| do
    # if char is a letter:
    shift_letters(char, n)
  end
end

def shift_letters(letter, n)
  alphabet = ("A".."Z").to_a

  current_index = alphabet.find_index(letter)
  # 0
  next_index = current_index + n
  # 1

 next_letter = alphabet[next_index]
 # "B"

end

# INPUT
# string
# integer (can it be zero?)

# OUTPUT
# string

# QUESTIONS AND ASSUMPTIONS


# PSEUDOCODE
# map over each character, check what it is.
# for each letter: replace it with the letter at the next (n) index position

# EXAMPLES AND TESTS - Uncomment to Run

pp play_pass("BORN IN 2015!", 1)
pp play_pass("I LOVE YOU!!!", 1) #"!!!vPz fWpM J"
pp play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2) #"4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"


# Example:
# your text: "BORN IN 2015!", shift 1

# 1 + 2 + 3 -> "CPSO JO 7984!"

# 4 "CpSo jO 7984!"

# 5 "!4897 Oj oSpC"

#--
# 1. shift each letter by a number (n),
# it must be a letter if you hit the end of the alphabet, go back to a

# 2. the number you gave, the new number would be the difference to equal 9

# 3. keep special characters as is

# 4. letters in an odd position should be to downcase
# letters in an even position should be to upcase
# 0 is even

# 5. reserve it



alphabet = { key: 1, value: "a"}
alphabet = { 1 => "a", 2 => "b", 3 => "c" }
alphabet_array = ["A", "B"]
current_index =  ["A"]
