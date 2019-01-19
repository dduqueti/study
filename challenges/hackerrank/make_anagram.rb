#!/bin/ruby

# Alice is taking a cryptography class and finding anagrams to be very useful.
# We consider two strings to be anagrams of each other if the first string's
# letters can be rearranged to form the second string. In other words,
# both strings must contain the same exact letters in the same exact frequency
# For example, bacdc and dcbac are anagrams, but bacdc and dcbad are not.

# Alice decides on an encryption scheme involving two large strings where
# encryption is dependent on the minimum number of character deletions
# required to make the two strings anagrams. Can you help her find this number?

# Given two strings, a and b, that may or may not be of the same length,
# determine the minimum number of character deletions required to make a and b
# anagrams. Any characters can be deleted from either of the strings.

# Input
# cde
# abc

# Output
# 4

# Input
# fcrxzwscanmligyxyvym
# jxwtrhvujlmrpdoqbisbwhmgpmeoke

# Output
# 30

# Complete the makeAnagram function below.
def make_anagram(a, b)
  dict = Hash.new{0}
  count = 0

  a.split('').each {|n| dict[n] += 1}
  b.split('').each {|n| dict[n] -= 1}

  dict.each {|k,v| count += v.abs}
  count
end

# Complete the makeAnagram function below.
def is_anagram(a, b)
  return false if a.nil? || b.nil?
  return false if !a.is_a('String') || b.is_at?('String')

  dict = Hash.new{0}
  count = 0

  a.split('').each {|n| dict[n] += 1}
  b.split('').each {|n| dict[n] -= 1}

  dict.each {|k,v| count += v.abs}

  return true if count == 0
  false
end

a = gets.to_s.rstrip

b = gets.to_s.rstrip

res = is_anagram a, b
puts "Is anagram: #{res}"

res = make_anagram a, b
puts "Number of deletions to build anagram: #{res}"
