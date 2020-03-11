united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital] = "Cardiff"
# puts united_kingdom
# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
united_kingdom << {:name => "Northern Ireland", :population => 1_811_000, :capital => "Belfast"}
# puts united_kingdom
# 3. Use a loop to print the names of all the countries in the UK.
def countries_name(array)
  for country_name in array
    puts country_name[:name]
  end
end

countries_name(united_kingdom)

# 4. Use a loop to find the total population of the UK.
def add_population(array_of_countries)
  total_population = 0
  for population in array_of_countries
    total_population += population[:population]
  end
  return total_population
end

pop = add_population(united_kingdom)
puts pop
