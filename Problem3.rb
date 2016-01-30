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
	return largest_factor
end

puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)