# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.

def fib_sum(num)
	total = 0
	previous_i = 0
	i = 1
	while i <= num
		total += i if (i % 2 == 0)
		i, previous_i = previous_i, previous_i + i 
	end
	"Total: #{total}"
end

puts fib_sum(4000000)