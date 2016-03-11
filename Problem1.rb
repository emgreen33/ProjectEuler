# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_three_and_five(num)
	i = 0
	result = 0
	while i < num
		if (i % 3 == 0) || (i % 5 == 0)
			result += i
			end
			i+=1
		end
	"Result: #{result}"
end


puts sum_of_three_and_five(10)
puts sum_of_three_and_five(1000)

