# Given a string s, find the length of the longest substring without repeating characters.
def length_of_longest_substring(s)
  memo = {}
  length = s.length
  longest = i = j = 0

  while i < length && j < length
    if !memo[s[j]]
      memo[s[j]] = 1
      j += 1
      longest = [longest, j - i].max
    else
      memo.delete(s[i])
      i += 1
    end
  end

  longest
end

puts length_of_longest_substring("") # => 0
puts length_of_longest_substring("abcabcbb") # => 3
puts length_of_longest_substring("bbbbb") # => 1
puts length_of_longest_substring("pwwkew") # => 3
