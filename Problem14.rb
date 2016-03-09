# which starting number, under one million, produces the longest chain?
# n = n/2 (n is even)
# n = (3 * n) + 1 (n is odd)


# def longest_length(num)
# 	new_num = self
# 	return new_num if new_num <= 1
# 	length = 1
# 	while new_num != 1
# 		if new_num % 2 == 0
# 			new_num /= 2
# 		else
# 			new_num = (3 * new_num) + 1
# 		end
# 		length += 1
# 	end
# 	length
# end

# def collatz_num(num)
# 	1.upto(num) do |num|
# 		length = num.longest_length 
# 	end
# end

def longest_length(num)
	length = 1
	while (num > 1)
		if num % 2 == 0
			num /= 2
		else
			num = (3 * num) + 1
		end
		length += 1
		if length > 1000
			puts "omg: #{length}"
		end
	end
	length
end

def max_length(num)
	max = 0
	length = 0
	num.times do |i|
		if longest_length(i) > length
			max = i
			length = longest_length(i)
		end
	end
	puts "Max: #{max}"
	puts "Length generated: #{length}"
end

puts max_length(1000000)

		