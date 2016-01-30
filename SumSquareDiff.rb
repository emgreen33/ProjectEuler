# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def sum_of_square_nums(num)
	result = 0
	i = 1
	while i <= num
		s = i * i
		i += 1
		result += s
	end
	result
end

puts sum_of_square_nums(10)

def square_of_sum_of_nums(num)
	result = 0
	i = 1
	while i <= num
		result += i
		i += 1
	end
	square = result*result
	square
end

puts square_of_sum_of_nums(10)

def difference(num)
	result = square_of_sum_of_nums(num) - sum_of_square_nums(num)
	result
end

puts difference(10) 
puts difference(100)