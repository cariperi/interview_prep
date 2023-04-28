# https://www.codewars.com/kata/628df6b29070907ecb3c2d83

def SpeedAndTime(s, t)
  #base speed (s)
  #time (t)
  permutations = ["r", "s"].repeated_permutation(t).to_a

  # get all possible combinations of run and sprint
  # check for and eliminate invalid permutations? - no "s" "s" - with a string / regex?
  valid_perm = permutations.reject do |perm|
    perm.join.include?('ss')
  end

  max_distance = 0

  valid_perm.each do |perm|
    distance = 0
    perm.each do |x|
      next if s.zero?
      if x == "r"
        distance += s
      else
        distance += s*2
        s -= 1
      end
    end
    max_distance = distance if distance > max_distance
  end
  # speed modifier?

  max_distance
    # after a sprint:
    # base speed reduces by 1 permanently
    # for the next unit of time, must be r
end

# p SpeedAndTime(2, 3)
# p SpeedAndTime(2, 4) #10
# p SpeedAndTime(2, 3) #8
p SpeedAndTime(1, 1) #2

# options = ['r', 's']
# result = options.repeated_permutation(3).to_a
# p result

# Why did my code time out?
# Our servers are configured to only allow a certain amount of time for your code to execute.
# In rare cases the server may be taking on too much work and simply wasn't able to run your code efficiently enough.
# Most of the time though this issue is caused by inefficient algorithms.
# If you see this error multiple times you should try to optimize your code further.