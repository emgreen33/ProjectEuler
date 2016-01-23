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