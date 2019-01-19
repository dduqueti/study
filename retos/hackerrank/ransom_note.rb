#!/bin/ruby

# Harold is a kidnapper who wrote a ransom note, but now he is
# worried it will be traced back to him through his handwriting.
# He found a magazine and wants to know if he can cut out whole
# words from it and use them to create an untraceable replica of
# his ransom note. The words in his note are case-sensitive and he
# must use only whole words available in the magazine. He cannot use
# substrings or concatenation to create the words he needs

# Complete the checkMagazine function below.
def check_magazine(magazine, note)
  dict = {}
  answer = "Yes"

  magazine.each do |word|
    if dict[word]
      dict[word] += 1
    else
      dict[word] = 1
    end
  end

  note.each do |word|
    if dict[word].nil? || dict[word] < 1
      answer = "No"
    elsif dict[word]
      dict[word] -= 1
    end
  end

  puts answer
end

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

magazine = gets.rstrip.split(' ').map(&:to_s)

note = gets.rstrip.split(' ').map(&:to_s)

check_magazine magazine, note
