# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.



def pythag_triplet(num)
	array = []
	product = 1
	(1..num/2-2).each do |i|
		(i..num/2-1).each do |j|
			c = num - i - j
			unless (c > j) && (i < j)
				next
			end

			if (i ** 2 + j ** 2 == c ** 2)
				array = [i, j, c]
			end
		end
	end
	p array
	array.each {|x| product *= x}
	puts product
end


pythag_triplet(1000)