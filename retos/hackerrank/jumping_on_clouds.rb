# Emma is playing a new mobile game that starts with consecutively
# numbered clouds. Some of the clouds are thunderheads and others are cumulus.
# She can jump on any cumulus cloud having a number that is equal to the number
# of the current cloud plus 1 or 2. She must avoid the thunderheads.

# Determine the minimum number of jumps it will take Emma to jump from her
# starting postion to the last cloud. It is always possible to win the game.

#!/bin/ruby

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
  jumps = 0

  i = 0
  while i < c.size - 1
    jumps += 1
    i = (c[i+2] == 0) ? i + 2 : i + 1
  end

  jumps
end

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c
puts result
