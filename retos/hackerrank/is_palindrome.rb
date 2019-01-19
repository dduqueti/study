# Given a string, determine if it is a palindrome, considering
# only alphanumeric characters and ignoring cases.

# Input Format

# A single line which contains the input string.

# Output Format

# A single line which contains YES or NO in uppercase.

# Sample Input
# A man, a plan, a canal: Panama
# kayak
# reviver
# madam
# race a car

# Sample Output
# YES
# YES
# YES
# YES

# Explanation

# Have you consider that the string might be empty?
# This is a good question to ask during an interview.

# For the purpose of this problem, we define empty string as valid palindrome.
def is_palindrome(s)
  return true if s.empty?

  array = s.tr('^A-Za-z', '').split('')
  length = array.length / 2

  for i in 0..length
    if array[i].downcase != array[array.length-i-1].downcase
      return 'NO'
    end
  end

  return 'YES'
end

# Note: Do the same for integers

s = gets.to_s.rstrip

result = is_palindrome s
puts result

