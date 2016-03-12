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

# Solution 1:
# def divide(n, d, repo = [])
#   return repo.size - repo.index(n) if repo.include? n
#   divide 10 * (n - (n / d) * d), d, repo << n
# end

# recurring_cycle_length = {"d" => 1, "count" => 1}

# (1..499).each do |i|
#   x     = i * 2 + 1
#   count = divide 1, x
#   if count > highest['count']
#     highest = {"d" => x, "count" => count}
#   end
# end


# Q: Find the value of d < 1000 for which 1/d contains the longest recurring 
# cycle in its decimal fraction part.


num = 1
recurring_length = 10000
a = []
b = []

while (num < 1000) do
  x = 1
  longest = ""
  while (longest.size <= recurring_length) do
    x *= 10
    val = x / num
    longest << val.to_s
    x = x % num
  end
  a << longest
  num += 1
end

a.each_with_index do |x, index|
  comstr = ""
  xstr = ""
  comstr = x[50..100]
  i=101
  while(comstr != xstr || i== recurring_length) do
    xstr = x[i..i+50]
    i += 1  
  end
  b << i  
end

puts b.each_with_index.max


