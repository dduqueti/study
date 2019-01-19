#!/bin/ruby

# Complete the activityNotifications function below.
# WORK ON TIMEOUT!
def activityNotifications(expenditure, d)
  median = nil
  alert_count = 0
  size = expenditure.size
  even_d = d.even? ? true : false
  median_list = []

  for i in (d + 1)..size
    if median_list.empty?
      (i-2).downto(i-1-d) do |j|
        median_list.unshift(expenditure[j])
      end
    else
      median_list.shift
      median_list << expenditure[i-2]
    end

    sorted_list = sort(median_list.dup)
    half_length = sorted_list.size / 2

    if even_d
      median = (sorted_list[half_length] + sorted_list[half_length - 1]) / 2.0
    else
      median = sorted_list[half_length]
    end

    alert_count += 1 if expenditure[i-1] >= (2 * median)
  end

  alert_count
end

def sort(list)
  return list if list.size < 2

  pivot = list.last
  pivot_at = list.size - 1

  list.delete_at(pivot_at)

  left  = []
  right = []

  list.each do |item|
    if item < pivot
      left << item
    else
      right << item
    end
  end

  sort(left) + [pivot] + sort(right)
end

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

expenditure = gets.rstrip.split(' ').map(&:to_i)

result = activityNotifications expenditure, d
puts result
