### ARRAYS =====================================================================
days = %w{Monday Tuesday Wednesday Thursday Friday Saturday Sunday}

days[-1]
days.last
days.first

letters = [*('a'..'z')]

sharks = ["Hammerhead", "Great White", "Tiger"]
sharks.push("Bullhead")
sharks.unshift("Angel") # add to front of array
sharks.delete("Great White")
sharks.pop # remove last
sharks.shift # remove first

sharks.each_with_index do |shark, index| 
  puts "The index is #{index}"
  puts "The value is #{shark}"
end

sharks[42]
sharks.fetch(42)

sharks[1,2] # grab two elements
sharks.take(2) # take two elements
sharks.slice!(1,2) # remove two elements

sample = sharks.sample(2) # return two random

sharks.include? "Tiger"

sharks.find {|item| item.include?("a")}  # finds first
sharks.select {|item| item.include?("a")} # returns all

# select and reject both return a new array, leaving the original array unchanged. 
# However, if you use the select! and reject! methods, the original array will be modified.

# The find_all method is an alias for select, but there is no find_all! method.

sharks.reverse
sharks.sort # for simple arrays

sharks = ["Tiger", "Great White"]
new_sharks = ["Tiger", "Hammerhead"]
sharks + new_sharks # will create duplicates
sharks | new_sharks # merge, no duplicates
sharks - new_sharks

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
options = sharks.map {|shark| "<option>#{shark}</option>"}
output = options.join("\n")

[1,2,3].reduce(&:+)
[1, 2, 3].sum

[ "a", nil, "b", nil, "c", nil ].compact # compact removes nils

a.shuffle!(random: Random.new(1))  #=> [1, 3, 2]

a = %w{ a b c d e f }
a.values_at(1, 3, 5)


### HASH =======================================================================

# hash is not simple sort
sharks_hash = [
  {name: "Hammerhead"},
  {name: "Great white"},
  {name: "Angel"}
]

sharks_hash.sort{|a, b| a[:name] <=> b[:name]}
sharks_hash.sort_by{|shark| shark[:name] }
[1,2,3,4,1,5,3].uniq

### RECURSION ==================================================================
# simple recursion example
# ((((1) + 2) + 3) + 4)

def sum_upto(4)
  return 1 if n == 1
  sum_upto(n - 1) + n
end

sum_upto 1 # => 1
sum_upto 2 # => 3
sum_upto 3 # => 6
sum_upto 4 # => 10
sum_upto 5 # => 15
sum_upto 100 # => 5050