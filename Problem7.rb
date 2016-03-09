# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13
# What is the 10,001st prime number?

def nth_Prime(num)
	prime_array = [2]
	i = 3

	while prime_array.length < num
		i += 2
		if (i % 2 == 0)
			next_num
		end

		prime = true
		prime_array.each do |j|
			if (i % j == 0)
				prime = false
				break
			end
		end

		if prime
			prime_array << i
		end
	end
	prime_array.last
end

puts nth_Prime(6)
puts nth_Prime(10001)
<<<<<<< HEAD





=======
>>>>>>> origin/master
