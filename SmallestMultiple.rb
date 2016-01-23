def smallest_multiple
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

def gcd(a,b)
	if (b == 0)
		a
	else
		gcd(b, a%b)
	end
end

def lcm(a, b)
	(a/ gcd(a,b)) * b
end

puts (1..20).inject {|x,y| lcm(x,y)}