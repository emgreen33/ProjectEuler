# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
# However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly 
# when n = 41, 41² + 41 + 41 is clearly divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the 
# consecutive values n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that produces 
# the maximum number of primes for consecutive values of n, starting with n = 0.

require 'mathn'

def max_num_primes(a_num,b_num)
	ab_product = 0
	max_primes = 0
	max_a = 0	
	max_b = 0
	(-a_num..a_num).each do |a|
		(2..b_num).each do |b|
			i = 0
			while (((i** 2) + (a * i) + b).prime?)
      			i+=1
			end
			max_primes, ab_product, max_a, max_b = i, a * b, a, b if (i > max_primes)
		end
	end
	p max_a  
	p max_b 
	"Answer: #{max_primes} #{ab_product}"

end

puts max_num_primes(1000,1000)


