# ASSESSMENT 4: INTRO TO RUBY
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.   

1. In what ways are JavaScript and Ruby similar? In what ways are they different?

  Your answer: They are both object oriented scripting languages that are widely used in web applications. They both allow for quick,dynamic manipulation of data but javascript is typically used to handle front-end user interations and ruby is mostly on the back-end. There are many syntax differences between the two but overall pretty similar structure-wise from a high level.

  Researched answer: Both are object oriented languages that are compiled at runtime rather than beforehand. Ruby is used mainly to interact with databases while javascript is mainly used to handle user interations. They both can handle full-stack applications but in practice Ruby is rarely used on the front-end. Javascript will often be much faster for certain tasks due to optimization of the engine and can also be much more scalable.



2. What is a hash?

  Your answer: A hash is a way in ruby to store a number of objects while keeping relationships between the different objects intact by using key values.

  Researched answer: Hashes are similar to arrays but act more like a dictionary as opposed to a list. A has assigns values to keys, so that the values can be looked up from the key. Any kind of object can be stored in a hash.



3. What is the testing framework used in Ruby? Describe the process of setting up the testing environment.

  Your answer: rspec is the testing framework. The rspec gem must be installed and a require rspec line in the .rb file before testing.The test statements go in a file with a corresponding name ending in _spec.rb.

  Researched answer: rspec. Install rspec gem and require 'rspec' in .rb file, corresponding _spec.rb file where test statements go. A describe block groups all of the tests together and tells rspec what class to test. Each test is started with a it "does something" do line and ends with end. The test will be looking for an expected value from an expect statement.



4. Name three possible relationships between objects?

  Your answer: has_many , has_one , belongs_to

  Researched answer:
    belongs_to
    has_one
    has_many
    has_many :through
    has_one :through
    has_and_belongs_to_many


5. What is an instance variable? How is it different from other variables in Ruby?

  Your answer:An instance variable starts with an @ symbol. It is a single instance of a variable defined in the initialize method of a class. It differs from other variables in that it can only be used within the class that it is initialized in.

  Researched answer: An instance variable is used as part of Object-Oriented Programming (OOP) to give objects their own private space to store data. Starts with an @ symbol. The inital value is declared in the initialize method but can be created elsewhere. They are encapsulated within the class. Also used in Rails to share data between the controller and views.



6. Ruby has a great community and tons of free resources to help you learn. [Here](https://www.ruby-lang.org/en/documentation/)is a list of great resources. Below are a few popular ones:
- [Interactive Ruby Tutorial](http://tryruby.org/levels/1/challenges/0)
- [Why's (poigniant) Guide to Ruby](http://poignant.guide/book/chapter-1.html): comics, anecdotes, and microscopic canaries
- [Ruby in 20 Min](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby Style Guide](https://rubystyle.guide/)

Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Ruby:
-Ruby Style Guide
1) Most of Ruby has a best practice style guide but many areas like string literal quoting, spacing inside hash literals, dot position in multi-line method chaining, do not have a preferred condition. Recommended to pick one and to always stay consistent.

2) No hard tabs. Use two spaces instead.

3) No for loops. Do not use for, unless you know exactly why. Most of the time iterators should be used instead. 


7. Stretch: What are blocks, procs, and lambdas?

  Your answer: Blocks are functions that can be passed into methods. I do not know procs or lambdas.

  Researched answer:
Blocks are snippets of code that can be created to be executed later. Blocks are passed to methods that yield them within the do and end keywords. One of the many examples is the #each method, which loops over enumerable objects. Methods can take blocks implicitly and explicitly. Implicit block passing works by calling the yield keyword in a method.We can explicitly accept a block in a method by adding it as an argument using an ampersand parameter (usually called &block). Since the block is now explicit, we can use the #call method directly on the resulting object instead of relying on yield.

A “proc” is an instance of the Proc class, which holds a code block to be executed, and can be stored in a variable. To create a proc, you call Proc.new and pass it a block.Symbols, hashes and methods can be converted to procs using their #to_proc methods. 

Lambdas are essentially procs with some distinguishing factors. They are more like “regular” methods in two ways: they enforce the number of arguments passed when they’re called and they use “normal” returns. Also, a lambda treats the return keyword the same way a method does. When calling a proc, the program yields control to the code block in the proc. So, if the proc returns, the current scope returns. If a proc is called inside a function and calls return, the function immediately returns as well.