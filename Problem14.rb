# which starting number, under one million, produces the longest chain?
# n = n/2 (n is even)
# n = (3 * n) + 1 (n is odd)


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

		