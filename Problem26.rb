# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions 
# with denominators 2 to 10 are given:

# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen 
# that 1/7 has a 6-digit recurring cycle.

# Q: Find the value of d < 1000 for which 1/d contains the longest recurring 
# cycle in its decimal fraction part.

# def divide n, d, repo = []
#   return repo.size - repo.index(n) if repo.include? n
#   divide 10 * (n - (n / d) * d), d, repo << n
# end

# highest = {"d" => 1, "count" => 1}

# (1..499).each do |i|
#   x     = i * 2 + 1
#   count = divide 1, x
#   if count > highest['count']
#     highest = {"d" => x, "count" => count}
#   end
# end

# puts highest["d"]

require 'mathn'

def recurring_cycle_length(n)
  return 0 if n % 2 == 0 or n % 5 == 0
   
  i = 1
  until (((10**i) - 1) % n) == 0
    i += 1
  end
   
  i
end
 
num = 0
max_length = 0
 
Prime.each { |x| 
  break if x >= 1_000
   
  rcl = recurring_cycle_length(x)
  if rcl > max_length    
    max_length, num = rcl, x
  end
}
 
puts max_length
puts num