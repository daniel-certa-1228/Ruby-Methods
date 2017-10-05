def first_method(name = "Charlie", age = 2) #default values
	puts "Hello, #{name}.  You are #{age}."
end

first_method 'Dan', 42 #if you don't pass arguments, the default values will show up

# => Hello, Dan.  You are 42.

# Ruby will only take the last defined function

def second_method
	puts "This is my second method"
	"Hello" #Ruby methods returns the last value automatically
	#if you want to return more than one vlaue, you need an explicit return statement
end

output_str = second_method
puts output_str

# => This is my second method
# => Hello

def third_method(*my_args)
	puts "I have been passed #{my_args.length} arguments in #{my_args}."
	for arg in my_args
		puts "Argument: #{arg}"
	end
end

third_method(1,true,4,5) #arguments create an array that can be looped through
third_method
third_method("Nora", 2, 3, "Lakeshia")

# I have been passed 4 arguments in [1, true, 4, 5].
# Argument: 1
# Argument: true
# Argument: 4
# Argument: 5
# I have been passed 0 arguments in [].
# I have been passed 4 arguments in ["Nora", 2, 3, "Lakeshia"].
# Argument: Nora
# Argument: 2
# Argument: 3

def fourth_method(number)
	number += 7 #number is scoped locally to the method
end

my_number = 20

puts fourth_method(my_number)
puts my_number

def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def multiply(num1, num2)
	num1 * num2
end

puts add(1,2)
puts subtract(5,3)
puts multiply(3,6)
puts multiply(add(5,5),subtract(15,5))
puts add(subtract(55,45), subtract(42,32))
































