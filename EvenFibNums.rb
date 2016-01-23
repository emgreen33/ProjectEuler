def fib_sum(num)
	total = 0
	previous_i = 0
	i = 1
	while i <= num
		total += i if (i % 2 == 0)
		i, previous_i = previous_i, previous_i + i 
	end
	total
end

puts fib_sum(4000000)