arr = ["I", "code", "therefore", "I", "am"]
for i in 0...arr.count
  puts arr[i]
end


24.class    # => Fixnum
true.class  # => TrueClass
nil.class   # => NilClass

"string".reverse  # => "gnirts"
23.odd?           # => true
"abc".upcase      # => "ABC" 

24 + 8    # => 32

24.send(:+, 8)  # => 32
24.+ (8)        # => 32
24 + 8          # => 32

puts "hello"
puts "Dojo"
print "coding"

# This is a line comment

=begin
	
this is a block comment
	
=end
BEGIN = {
	puts "This is a begin block"
}

END = { 
	puts "this is an end block"
}

#variables videos

x = 5
y = 10
z = x+y
puts z

x = 5; y = 10; z = x+y
puts z


first_name = "Matt"
last_name = "Wilkinson"
puts "your name is ", first_name, last_name
puts "your name is "+ first_name+ last_name

puts " My name is  #{first_name} last name is #{last_name}"
puts " My name is  %s lastname is %s" [first_name,last_name]

z = 50
puts "value of x is #{z} %d" % z #% f would do a float

"Iam 5'11\" tall" # this is an escape charachter  SQL INJECTION VULN!
# \t is a tab \n is a new line

x = "Coding Dojo"

puts x.length # 10
puts x.class # string
puts x.capitalize #Coding ...
puts x.downcase #coding...
puts x[2] # d
puts x.include?("dojo") #case sensative ==>false
puts x."this word has the word 'Dojo'" if x.include? "Dojo" 

x =  "matthew, mark, luke, john"
puts x.split(",")s
y = ""
puts "Y is empty" if y.empty?

"I am a string"
'I am also a string'

String.ancestors # => [String, Comparable, Object, Kernel, BasicObject]

String.instance_methods == "instance".methods
String.methods != "instance".methods

String.new("I am an instance of the String class")

"24 plus 8 is #{24 + 8}" # => "24 plus 8 is 32"
'24 plus 8 is #{24 + 8}' # => "24 plus 8 is #{24 + 8}"

"hello".split   # => ["hello"] 
"hello".split("")  # => ["h", "e", "l", "l", "o"]

age = 22
if age > 21
  puts "Welcome to the party"
else
  puts "Not yet"
end


number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif (number % 3 == 0)
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
  puts "Welcome to the party"
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end


puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false

# While loops
i = 0
num = 5
while i < num do
   puts "Inside the loop i = #{i}"
   i +=1
end


i = 0
num = 5
begin
   puts "Inside the loop i = #{i}"
   i +=1
end while i< num


for i in 0..5 
  puts "Value of local variable is #{i}" 
end 


# break - terminates the most internal loop
# next - jumps to the next iteration
# redo - restarts the iteration of the most internal loop

names = ["Matz", "Guido", "Dojo", "Michael", "Choi"]
numbers = [1, 7, 4, 9, 1, 3, 12, 8]

# .at or .fetch
puts names.at(3)
# will print out Michael
puts names.fetch(4)
# will print out Choi

puts numbers.at(0)
puts numbers.at(1)

# .delete
numbers.delete(1)
# will delete all the number 1 from the numbers array
# puts numbers # uncomment to check if the number 1s were deleted from the array
names.delete("Dojo")

# .reverse
puts names.reverse
puts numbers.reverse

# .length
puts names.length
puts numbers.length

# .sort
puts names.sort
puts numbers.sort

# .slice
puts names.slice!(1)
puts "updated names: "
puts names

# .shuffle
puts numbers.shuffle()

# .join
puts names.join("; ")
# will print out names with ; in between
puts numbers.join(" ")
# will print out numbers with space in between
puts numbers.join
# will print out number with no space or any characters in between
puts numbers.join(names[0])
# you may also join them using other values like one of the elements from the array names

# .insert
names.insert(2, "hi")
# will insert the string "hi" at the 2 index of the array names
names.insert(2, "Awesome")
# this will not replace the value at index 2, but will add it and push the other values to the proceeding indices
puts names

numbers.insert(6, 1, 2, 3)
# you can also inser multiple values at a time. 
# remember that the first value is the index on where you want to put the values
# then followed by the value(s) you want to insert
puts numbers

# values_at() -> returns an array with values specified in the param
puts names.values_at(0)
puts names.values_at(1,4)
# you can choose which values you want to get using their index
puts numbers.values_at(0..4)
# you can also choose using range

# using values_at and join
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
puts names.values_at(1,2).join(" is ")

### Iterators
.any?
["ant", "bear", "cat"].any? {|word| word.length >= 3}
#==>true

.each
["ant", "bear", "cat"].each {|word| print word, "--"}
#==>ant--bear--cat--

.collect .map
(1..4).collect {|i| i*i}
#=> [1, 4, 9, 16]

.detect/.find
(1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
#=> nil
(1..100).detect { |i| i %5 == 0 and i % 7 == 0 }
#=> 35


.find_all {|obj| block} or .select {|obj| block} ;
(1..10).find_all { |i| i % 3 == 0 }
#=> [3, 6, 9]

.reject {|obj| block} -> opposite of find_all
(1..10).reject { |i| i % 3 == 0 }
#=> [1,2,4,5,7,8,10]

.upto(limit)
5.upto(10) { |i| print i, " " }
#=> 5 6 7 8 9 10





.member?(val) => true or false
.include?(value) => true or false
.last => returns the last object in range
.max => returns the maximum value in range
.min => returns the minimum value in range


my_array = (1..8)
# will create and array of numbers from 1 to 8
alphabet = "a"..."z"

# .member?(val) => true or false
puts my_array.member?(2)
puts my_array.member?("g")
# should return true
puts alphabet.member?("CodingDojo")
# should return false

# .include?(value) => true or false
puts my_array.include?(8)
puts alphabet.include?("x")
# should return true
puts my_array.include?(12)
puts alphabet.include?("X")
puts alphabet.include?("hi")
# should return false

# .last => returns the last object in range
puts my_array.last
puts alphabet.last

# .max => returns the maximum value in range
puts my_array.max

# .min => returns the minimum value in range
puts alphabet.min





.delete(key) => deletes and returns a value associated with the key
e.g. h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); print h      #=> [:first_name, "Coding"]
.empty? => returns true if hash contains no key-value pairs
.has_key?(key) => true or false
.has_value?(value) => true or false





