# Change Machine
# https://www.codewars.com/kata/537ece6953efd95e9e000516


# frozen_string_literal: true

def change(cents)
    coins = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
    remainder = cents

    return coins if cents.negative?

    coins.keys.each do |k|
        next if k > cents || k > remainder
        coins[k] += (remainder / k)
        remainder -= (remainder / k) * k
    end

    return coins
end

def change(cents)
    return { 25 => 0, 10 => 0, 5 => 0, 1 => 0 } if cents <= 0

    coins = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
    remainder = cents

    coins.each_key do |k|
      coins[k], remainder = remainder.divmod(k)
    end

    coins
end
#######################
# PRE-CODING PLANNING #
#######################

# INPUT DATA TYPE
# cents: integer (positive, negative, zero)

# OUTPUT DATA TYPE
# hash with integers as keys and values

# ASSUMPTIONS
# can do a guard clause / early return
# only 25, 10, 5, 1 cent coins -- return all keys in all cases
# not including any other coins (100, 50)

# QUESTIONS


#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

pp change(31) # => { 25 => 1, 10 => 0, 5 => 1, 1 => 1 }