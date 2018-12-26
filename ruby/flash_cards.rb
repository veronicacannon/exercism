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
# https://www.khanacademy.org/computing/computer-science/algorithms#recursive-algorithms
# simple recursion example
# https://vimeo.com/24716767
# ( ( ( (1) + 2) + 3) + 4)

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

def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end


### HASH =======================================================================
# A hash is an ordered collection of key / value pairs. 
# The keys in a hash cannot be duplicates and any Ruby object can be a key or a value.

class FileMaster
  attr_reader :dirpath, :filename, :extension

  def initialize(filepath)
    @dirpath, @filename, @extension = filepath.match(%r{\A(.*/)(\w+)\.(\w+)\z}).captures
  end
end

### ATTR ===================================================================================
# attr_accessor provides the getter and setter methods for an instance variable. 
# In other words, attr_accessor provides methods to return the value of the instance 
# variable and update the value of the instance variable.

attr_reader 
attr_writer
attr_accessor



### regex ===================================================================================
%r{} is equivalent to the /.../ notation, but allows you to have '/' in your regexp 
without having to escape them:

%r{/home/user}

is equivalent to:

/\/home\/user/



===================================================================================
\A	start of string
(.*/)	single character (.) zero or more (*) up to slash (/)
(\w+)	any word character (letter, number, underscore)
\.	escaped period (to find just period)
(\w+)	any word character (letter, number, underscore)
\z	end of string


===================================================================================
captures returns an array from the match
equivalent to mtch.to_a[1..-1]



===================================================================================
Write a function that sorts the keys in a hash by the length of the key as a string.
h = {abc: "hello", 'another_key' => 123, 4567 => 'third'}

h.keys.map(&:to_s).sort_by(&:length)

h.keys		just the keys of the hash, returns an array
.map		returns an array
(&:to_s)	map block to string
.sort_by
(&:length)	map block length



===================================================================================
What is the value of the variable uncased in the code?
uncased = [“one”, “two”, “three”].map {|n| puts n.upcase }

upcased = [nil, nil, nil]
puts always returns nil


===================================================================================
Object#dup creates a shallow copy of an object. For example, it will not copy any mixed-in module methods, whereas Object#clone will. 


==================================================================================
Modules are Ruby’s way of grouping methods, classes, and constants together to provide a namespace for preventing name clashes. The second purpose of modules is to use them as mixins. Technically, Ruby only supports single inheritance, but by using modules as mixins, it is possible to share code among different classes—a key advantage of multiple inheritance—without having to give up the simplicity of the single inheritance paradigm.

===================================================================================
manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']
manly.select { |word| word.include?('man') }
manly.grep /man/
manly.select {|word| word.match /man/ }


===================================================================================
Instance variables can be accessed by any instance methods in a class and are used to maintain "state" (state is the data that objects "know").  Instance variables are only available to the instance methods, not the class methods. Undefined instance variables have a default value of nil.


===================================================================================
Singleton methods are methods that are defined for a particular object (as opposed to instance methods that are defined for all objects made by the class). Class methods in Ruby are really just singleton methods defined for the class object.



===================================================================================
# singleton method old school
module Geometry
  class << self
    def rect_area(length, width)
      length * width
    end
  end
end

Geometry.rect_area(4, 5)
# => 20


### OUTPUT ===================================================================================
# The print and puts methods produce textual output on the console. The difference between the two is that the latter adds a new line character.

print "Apple "
print "Apple\n"

# The print method prints two consecutive "Apple" strings to the terminal. If we want to create a new line, 
# we must explicitly include a newline character. The newline character is \n. Behind the scenes, 
# the print method actually calls the to_s method of the object being printed.

puts "Orange"
puts "Orange"

# The puts method prints two strings to the console. Each is on its own line. The method includes automatically the newline character.

$ ./printing.rb
Apple Apple
Orange
Orange


===================================================================================
with blocks, note that precedence matters with formatting

def cool
  yield
end

p cool { “beans” }
p (cool do "beans" end ) # requires parenthesis so block attaches to cool method


===================================================================================
# way to check if file is library or can be executed
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye
end


===================================================================================
# check if number is prime
require ‘prime’
n.prime? => returns true or false