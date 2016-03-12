# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means 
# that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant 
# if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written 
# as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers 
# greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot 
# be reduced any further by analysis even though it is known that the greatest number that cannot be 
# expressed as the sum of two abundant numbers is less than this limit.

# Q: Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def sum_proper_divisors(num)
  sum = 1
  (2..Math.sqrt(num)).each do |i|
    if num % i == 0
      result = num / i
      sum += result unless result == i
      sum += i
    end
  end
  sum
end

def next_abundant(abundants)
  i = abundants.last + 1
  while (sum_proper_divisors(i) <= i)
    i += 1
  end
  i
end

def sum_prop_divisors_not_abundant(num)
  abundants  = [12]
  sums_of_two_abs  = {24 => nil}
  total = 0

  while abundants.last < num do
    abundants << next_abundant(abundants)
    abundants.each do |i|
      sum = abundants.last + i
      if sum > num
        break
      end
      sums_of_two_abs.store sum, nil
    end
  end

  num.times do |i|
    total += i unless sums_of_two_abs.include? i
  end

  "Sum of all pos nums not be written as sum of two abundanet nums: #{total}" 
end

puts sum_prop_divisors_not_abundant(28123)