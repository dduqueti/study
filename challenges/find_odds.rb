def find_odds(array)
  hash = {}

  array.each do |item|
    if hash[item]
      hash[item] += 1
    else
      hash[item] = 1
    end
  end

  hash.each do |k, v|
    puts k if v.odd?
  end
end

list = [4, 1, 2, 5, 2, 3, 4, 4, 5]
result = find_odds(list)
puts result.to_s
