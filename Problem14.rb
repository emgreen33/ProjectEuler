# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?


def chain_length(num)
	length = 1
	while (num > 1)
		if num % 2 == 0
			num /= 2
		else
			num = (3 * num) + 1
		end
		length += 1
	end
	length
end

def max_length(num)
	max = 0
	length = 0
	num.times do |i|
		if chain_length(i) > length
			max = i
			length = chain_length(i)
		end
	end
	puts "Max: #{max}"
	puts "Length generated: #{length}"
end

puts max_length(1000000)

		