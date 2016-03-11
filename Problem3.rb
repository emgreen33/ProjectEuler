# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
	largest_factor = 1
	while num % 2 == 0
		largest_factor = 2
		num = num/2
	end
	prime = 3
	while num != 1
		while num % prime == 0
			largest_factor = prime
			num = num/prime
		end
		prime += 2
	end
	"Largest prime factor: #{largest_factor}"
end

puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)