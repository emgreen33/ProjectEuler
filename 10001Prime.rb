# def nth_Prime(num)
# 	prime_array = [2]
# 	i = 3

# 	while prime_array.length < num
# 		i += 2
# 		if (i % 2 == 0)
# 			next_num
# 		end

# 		prime = true
# 		prime_array.each do |j|
# 			if (i % j == 0)
# 				prime = false
# 				break
# 			end
# 		end

# 		if prime
# 			prime_array << i
# 		end
# 	end
# 	prime_array.last
# end

# puts nth_Prime(6)
# puts nth_Prime(10001)


def nth_prime(num)
    prime_array = [2]
    i = 3
    while prime_array.length < num
        prime = true
        factors = (2...i).to_a.select{|x| i % x == 0} # will return 
                                                             # an array with factors
        prime = false unless factors.empty?
        prime_array << i if prime == true
        i += 2
    end
    p prime_array # this is similar to puts, use it to see what 
                         # prime_array looks like!
    prime_array.last
end
puts nth_prime(6)
#puts nth_prime(10001)


def find_prime(num)
	range = [0, 0, 2]
	max = num * 30
	(3...max).each do |num|
		num.odd? ? (range << num) : (range << 0)
	end

	i = range[3]
	while true
		(i*i).step(max, i) do |num|
			range[num] = 0
		end
		i = range.find {|num| (num > i)}
		break if i*i > range.length
	end
	range = range.reject{|num| n}
	range[num - 1]
end

puts find_prime(6)




