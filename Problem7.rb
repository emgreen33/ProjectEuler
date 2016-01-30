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


# def nth_prime(num)
#     prime_array = [2]
#     i = 3
#     while prime_array.length < num
#         prime = true
#         factors = (2...i).to_a.select{|x| i % x == 0} # will return 
#                                                              # an array with factors
#         prime = false unless factors.empty?
#         prime_array << i if prime == true
#         i += 2
#     end
#     p prime_array # this is similar to puts, use it to see what 
#                          # prime_array looks like!
#     prime_array.last
# end
# puts nth_prime(6)
# puts nth_prime(10001)


# def find_prime(num)
# 	range = [0, 0, 2]
# 	max = num * 30
# 	(3...max).each do |num|
# 		num.odd? ? (range << num) : (range << 0)
# 	end

# 	i = range[3]
# 	while true
# 		(i*i).step(max, i) do |num|
# 			#puts "current num is #{num}" #string interpolation
# 			range[num] = 0
# 			#puts "now range is #{range.join(",")}"
# 		end
# 		i = range.find {|num| (num > i)}
# 		break if i*i > range.length
# 	end
# 	range = range.reject{|num| num == 0}
# 	p range
# 	range[num - 1]
# end

# puts find_prime(6)
# puts find_prime(10001)



