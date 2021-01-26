# https://leetcode.com/contest/weekly-contest-225

# You are given a string time in the form of hh:mm, where some of
# the digits in the string are hidden (represented by ?).
# The valid times are those inclusively between 00:00 and 23:59.
# Return the latest valid time you can get from time by replacing the
# hidden digits.

# Constraints:
# time is in the format hh:mm.
# It is guaranteed that you can produce a valid time from the given string.

# @param {String} time
# @return {String}
def maximum_time(time)
  # Minutes
  time[3] = time[3] == '?' ? '5' : time[3]
  time[4] = time[4] == '?' ? '9' : time[4]

  # Hours
  if time[0] == '?'
    time[0] = time[1] <= '3' || time[1] == '?' ? '2' : '1';
  end

  if time[1] == '?'
    time[1] = time[0] == '2' ? '3' : '9';
  end

  time
end

# Input: time = "2?:?0"
# Output: "23:50"
# Explanation: The latest hour beginning with the digit '2' is 23 and the
# latest minute ending with the digit '0' is 50.

puts maximum_time("2?:?0") # "23:50"
puts maximum_time("1?:22") # "19:22"
puts maximum_time("0?:3?") # "09:39"
puts maximum_time("??:3?") # "23:39"
puts maximum_time("?4:03") # "14:03"
puts maximum_time("?0:15") # "20:15"
puts maximum_time("2?:?0") # "23:50"
