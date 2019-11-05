# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

newArray = Array.new
myArray.each do |element|
  newArray.push(element*3)
end
p newArray

newArray = myArray.map{ |element| element*3 }
p newArray

# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

capped = String.new
capped = sentence.split.map { |element| element.capitalize }.join(" ")
p capped

# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

newstring=no_vowels.downcase.delete('aeiou')
p newstring



# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.
# Starting point from ln 36 to 51
# class example
#   constructor(day)
#     @day=day
#   end

#   def SayHi
#     if(day === "Friday"){
#       puts "TGIF!"
#     }
#     else if(day === "Monday"){
#       puts "Its monday again"
#     }
#     else{
#       puts "another day"
#     }
# end

class Example
  def initialize(day)
    @day=day
  end

  def say_hi
    if(@day === "Friday")
      puts "TGIF!"
    elsif(@day === "Monday")
      puts "Its monday again"
    else
      puts "another day"
    end
  end
end

testing = Example.new("Tuesday")
testing.say_hi()

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal
  def initialize(color)
    @color=color
  end
  def legs
    puts "4 legs"
  end
end

# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

class Animal
  def initialize(color)
    @color=color
  end
  def legs
    puts "The #{@color} animal has 4 legs"
  end
end

first_animal = Animal.new("Brown")
first_animal.legs()