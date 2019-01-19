# Not using string.reverse!
def reverse(s)
  half_length = s.length / 2

  half_length.times do |i|
    s[i], s[-i-1] = s[-i-1], s[i]
  end

  s
end

# FOR loop approach
def reverse(s)
  half_length = s.length / 2

  for i in (0..half_length)
    s[i], s[-i-1] = s[-i-1], s[i]
  end

  s
end

s = gets.rstrip

result = reverse s
puts result


