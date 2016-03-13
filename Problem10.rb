# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# integrate the Math. module to find sqrt function 

def is_a_prime?(num)
	if (num == 1)
		return false
	end
	max_num = Math.sqrt(num) #Math module contains module functions for basic trigonometric funcs
	2.upto(max_num) do |i|		##sqrt(num) returns the non-negative sqrt of num
		if (num % i == 0)
			return false 
		end
	end
	return true 
end



def sum_of_primes(num)
	sum_total = 2
	3.step(num, 2) do |i|
		if is_a_prime?(i)
			sum_total += i
		end
	end
	"Sum of primes up to num: #{sum_total}"
end

puts sum_of_primes(2000000)


