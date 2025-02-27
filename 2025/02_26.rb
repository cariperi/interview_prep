# Meeting
# Codewars: https://www.codewars.com/kata/59df2f8f08c6cec835000012

def meeting(s)
  # call upcase on the original input string
  s_1 = s.upcase.split(";")
  s_2 = s_1.map {|name| name.split(":")}
  s_3 = s_2.map {|name| name.reverse}
  s_4 = s_3.sort
  s_4.map { |name| "(#{name[0]}, #{name[1]})"}.join
end

# ASSUMPTIONS AND QUESTIONS
# will there always be a first and last name

# INPUT
# string
# names are first name : last name sep by semi-colon

# OUTPUT
# names are last name , first name in parens sep by nothing
# all alphabetical chars are uppercase
# alphabetize by last name first, then first name

# EXAMPLE AND TESTS

# s = "Wilfred:Corwill;Fred:Corwill;John:Bell"
# pp meeting(s)
# "(BELL, JOHN)(CORWILL, FRED)(CORWILL, WILFRED)"

# s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill"
# pp meeting(s)
# # # "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"

pp meeting("Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn") == "(ARNO, ANN)(BELL, JOHN)(CORNWELL, ALEX)(DORNY, ABBA)(KERN, LEWIS)(KORN, ALEX)(META, GRACE)(SCHWARZ, VICTORIA)(STAN, MADISON)(STAN, MEGAN)(WAHL, ALEXIS)"

pp meeting("John:Gates;Michael:Wahl;Megan:Bell;Paul:Dorries;James:Dorny;Lewis:Steve;Alex:Meta;Elizabeth:Russel;Anna:Korn;Ann:Kern;Amber:Cornwell") == "(BELL, MEGAN)(CORNWELL, AMBER)(DORNY, JAMES)(DORRIES, PAUL)(GATES, JOHN)(KERN, ANN)(KORN, ANNA)(META, ALEX)(RUSSEL, ELIZABETH)(STEVE, LEWIS)(WAHL, MICHAEL)"

pp meeting("Alex:Arno;Alissa:Cornwell;Sarah:Bell;Andrew:Dorries;Ann:Kern;Haley:Arno;Paul:Dorny;Madison:Kern") == "(ARNO, ALEX)(ARNO, HALEY)(BELL, SARAH)(CORNWELL, ALISSA)(DORNY, PAUL)(DORRIES, ANDREW)(KERN, ANN)(KERN, MADISON)"
