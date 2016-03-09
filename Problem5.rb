# 2520 is the smallest number that can be divided by each 
#of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
#divisible by all of the numbers from 1 to 20?


def smallest_multiple(x)
	smallest_num = 0
	i = 1
	(i..x-1).each do |x|
		if i % x == 0
			i += 1
			smallest_num = i
		else
			break
		end
	end
	smallest_num
end

puts smallest_multiple(20)

def greatest_common_denominator(a,b)
	if (b == 0)
		a
	else
		greatest_common_denominator(b, a%b)
	end
end

def lowest_common_multiplier(a, b)
	(a/ greatest_common_denominator(a,b)) * b
end

puts (1..20).inject {|x,y| lowest_common_multiplier(x,y)}

