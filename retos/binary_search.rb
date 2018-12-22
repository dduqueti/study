def binary_search(array, number)
  puts "Input: #{array}"
  puts "Index for number: #{number}"

  min = 0
  max = array.length

  while(min <= max)
    middle = ((min + max) / 2)

    if array[middle] == number
      return puts "Found at: #{middle}"
    elsif array[middle] < number
      min=middle
    else
      max=middle
    end
  end

  return puts "Unexpected error";
end

binary_search([28, 32, 32, 38, 70, 72, 93], 28)
binary_search([28, 32, 32, 38, 70, 72, 93], 32)
binary_search([28, 32, 32, 38, 70, 72, 93], 38)
binary_search([28, 32, 32, 38, 70, 72, 93], 70)
binary_search([28, 32, 32, 38, 70, 72, 93], 72)
binary_search([28, 32, 32, 38, 70, 72, 93], 93)
binary_search([28, 32, 38], 32)
binary_search([28, 32, 38], 38)
