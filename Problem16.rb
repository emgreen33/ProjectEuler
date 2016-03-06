# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

# To come to this solution, we generate the result of 2^1000, 
# convert it into a string and split each digit into its own entry on an array, 
# then sum them up all in one easy line.



def sum_of_digits(num)
	sum = 0
	num.to_s.each_char { |x| sum = sum + x.to_i}
	puts sum
end

n = 2**1000
puts sum_of_digits(n)