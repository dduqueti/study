#!/bin/ruby

# A string is said to be a special palindromic string if either of two conditions is met:

# All of the characters are the same, e.g. aaa.
# All characters except the middle one are the same, e.g. aadaa.

# A special palindromic substring is any substring of a string
# which meets one of those criteria. Given a string,
# determine how many special palindromic substrings can be formed from it.

# Function Description

# Complete the substrCount function in the editor below.
# It should return an integer representing the number of special palindromic
# substrings that can be formed from the given string.

# substrCount has the following parameter(s):

# n: an integer, the length of string s
# s: a string

# Input samples
# asasd
# abcbaba
# aabaa
# aabaaa

# Output samples
# 5
# 10
# 9
# 12

# Complete the substr_count function below.
# Keep a track of the initial character and start counting the number of
# matched patterns. When finding a diff char keep track of the index so
# you can count later if there is the equal amount of pre-consecutives
# post-consecutives matching chars around it. As you go looping each
# you first focus in how many substrings you can match for each character.
def substr_count(n, s)
  count = s.size

  for i in 0..(s.size - 1)
    start_char = s[i]
    diff_char_index = -1

    for j in (i+1)..(s.size - 1)
      curr_char = s[j]
      if start_char == curr_char
        if diff_char_index == -1 || (j - diff_char_index) == (diff_char_index - i)
          count += 1
          break
        end
      else
        if diff_char_index == -1
          diff_char_index = j
        else
          break
        end
      end
    end
  end

  count
end

n = gets.to_i

s = gets.to_s.rstrip

result = substr_count n, s
puts result
