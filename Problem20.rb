# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def sum_of_digits(num)
	sum = 0
	num.downto(1).inject(:*).to_s.each_char { |x| sum=sum+x.to_i }
	"Sum of digits: #{sum}"
end

puts sum_of_digits(100)