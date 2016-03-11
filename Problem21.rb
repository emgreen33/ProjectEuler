# Let d(n) be defined as the sum of proper divisors of n (numbers less than 
# n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and 
# each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Q: Evaluate the sum of all the amicable numbers under 10000.


def d(num)
  total = 1
  (2..Math.sqrt(num)).each do |i|
    if num % i == 0
      total += (num / i) + i
    end
  end
  total
end

def amicable_num?(a, amic_nums)
  amic_nums[a] = b = d(a)
  a != b and a == amic_nums[b]
end

def sum_of_amics(num)
  amic_nums  = []
  total = 0

  num.times do |i|
    if amicable_num?(i, amic_nums)
      total += (i + amic_nums[i])
    end
  end

  "Sum of all amicable nums: #{total}"
end

puts sum_of_amics(10000)