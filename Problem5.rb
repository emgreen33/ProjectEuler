# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

def greatest_common_denom(num, i)
	if (i == 0)
		num
	else
		greatest_common_denom(i, num%i)
	end
end

def lowest_common_denom(num, i)
	(num/ greatest_common_denom(num, i)) * i
end


def smallest_mult(num)
	smallest_num = (1..num).inject {|x,y| lowest_common_denom(x,y)}
	"Smallest multiple: #{smallest_num}"
end

puts smallest_mult(20)
