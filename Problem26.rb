# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions 
# with denominators 2 to 10 are given:

# 1/2 =   0.5
# 1/3 =   0.(3)
# 1/4 =   0.25
# 1/5 =   0.2
# 1/6 =   0.1(6)
# 1/7 =   0.(142857)
# 1/8 =   0.125
# 1/9 =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen 
# that 1/7 has a 6-digit recurring cycle.

#Q: Find the value of d < 1000 for which 1/d contains the longest recurring 
#cycle in its decimal fraction part.

def divide num, d, a = []
  return a.size - a.index(num) if a.include? num
  divide 10 * (num - (num / d) * d), d, a << num
end

def val_of_d(num)
  highest = {"d" => 1, "count" => 1}

  (1..num/2).each do |i|
    x     = i * 2 + 1
    count = divide 1, x
    if count > highest['count']
      highest = {"d" => x, "count" => count}
    end
  end

  "Value of d: #{highest["d"]}"
end

puts val_of_d(1000)

