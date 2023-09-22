def solve(s)
  alphabet = ('a'..'z').each.with_index(1).to_h
  cursor = 0
  count = 0
  max = 0

  while cursor < s.length do
    char = s[cursor]
    if "aeiou".include?(char)
      count = 0
    else
      count += alphabet[char]
      max = count if count > max
    end
    cursor += 1
  end

  max
end


#TEST CASES - UNCOMMENT ONE BY ONE AND RUN FILE

# puts solve("zodiac") #expect 26
# puts solve("chruschtschov") #expect 80
# puts solve("khrushchev") #expect 38
# puts solve("strength") #expect 57
# puts solve("catchphrase") #expect 73
# puts solve("twelfthstreet") #expect 103
# puts solve("mischtschenkoana") #expect 80

#always lowercase
#always a-z
#no spaces
#consonants != aeiou
#values: a->1...z->26
#return the point value