# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def prime?(num)
	if (num == 1)
		return false
	end
									#sqrt(num) returns the non-negative sqrt of num
	max_num = Math.sqrt(num).floor #floor returns the largest integer less than or equal to float.
	2.upto(max_num) do |i|
		if (num % i == 0)
			return false 
		end
	end
	return true 
end

# def prime?(num)
# 	if num <= 1
# 		return false #only nums > 1 can be prime
# 	end

# 	i = 2
# 	while i < num
# 		if (num % i) == 0
# 			return false
# 		end
# 		i += 1
# 	end
# 	return true
# end





sum = 2
3.step(2000000,2) do |i| #from 3 to 2000000 increment by 2 (odd nums) checking if they are prime then summing
	if prime?(i)
		sum += i
	end
end

puts "answer : #{sum}"


