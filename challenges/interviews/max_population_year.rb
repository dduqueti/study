# We'll be writing a Census class that can find the year when our
# micro world achieved maximum population.
#
# Given an array of people, with their birth and death years, find the year with the highest population.
#
# What I'm looking for:
#
# 1. you're able to vocalize your thoughts, it's important to be able
#    communicate what's going on in your head
#
# 2. you're able to keep good code hygiene as you go
#
# 3. BDD the implementation
#
# Tips:
#
# 1. The right pane is a fully interactive REPL, use it if you need
#    to explore some Ruby methods
#
# 2. It's fine to Google how to use Ruby APIs, not fine to Google
#    the solution
#
# Good luck!

data = [
      [1920, 1954],
      [1931, 1975],
      [1921, 1922],
      [1992, 2007],
      [1953, 2017],
      [1700, 1722],
      [2016, 2017],
      [1980, 2001],
      [1990, 2011],
      [1967, 2019],
      [1905, 1987],
      [1990, 2018],
      [1998, 2015],
      [1993, 2019]
    ]

# O(n*2)
# To have it O(2N) we need to avoid doing calculations we already did, so
# we need to cycles where i increases and then j starts on i
def year_with_maximum_population(data)
  memo = {}

  data.each do |p1|
    current_birth_year = p1[0]
    next if memo[current_birth_year]

    count = 0
    # Person is alive in that year if they were born before the current year
    # and they died after the current year
    data.each do |p2|
      if p2[0] <= current_birth_year && current_birth_year <= p2[1]
        count +=1
      end
    end

    memo[current_birth_year] = count
  end

  year_of_max = nil
  current_population = 0
  memo.each do |k, v|
    if v > current_population
      current_population = v
      year_of_max = k
    end
  end

  year_of_max
end

# O(n log n)
# Sort array and have unique years
# Add the delta for each year
# Running sum of alive persons on sorted array
def year_with_maximum_population(data)
  # Get a calenader with unique years
  calendar = data.flatten.uniq.sort
  delta_memo = Hash.new(0)

  # Save the delta for each year
  data.each_with_index do |person, i|
    delta_memo[person[0]] += 1
    delta_memo[person[1]] -= 1
  end

  # Associate calendar year with delta
  calendar.each_with_index do |year, i|
    calendar[i] = [year, delta_memo[year]]
  end

  max_pop_year = calendar[0][0]
  current_population = 0
  max_population = 0

  # Running sum of max population
  # Set year on max_population
  calendar.each do |year|
    current_population += year[1]

    if current_population > max_population
      max_population = current_population
      max_pop_year = year[0]
    end
  end

  max_pop_year
end

# O(N)
# To have it O(C*N) we need to avoid doing calculations we already did, so
# we need to cycles where i increases and then j starts on i
# UPDATE: Currently not working
# def year_with_maximum_population(data)
#   data.sort!
#   memo = {}

#   data.each_with_index do |p1, i|
#     current_birth_year = p1[0]
#     # puts "Iteration i #{i}"
#     next if memo[current_birth_year]

#     count = 0
#     # Person is alive in that year if they were born before the current year
#     # and they died after the current year
#     j = i + 1
#     (j).upto(data.length - 1) do |j|
#       if data[j][0] <= current_birth_year && current_birth_year <= data[j][1]
#         count +=1
#       end
#     end

#     memo[current_birth_year] = count
#   end

#   puts memo

#   year_of_max = nil
#   current_population = 0
#   memo.each do |k, v|
#     year_of_max = k if v > current_population
#   end

#   year_of_max
# end


puts year_with_maximum_population(data)


