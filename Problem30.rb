# Surprisingly there are only three numbers that can be written as 
#the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Q: Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


def find_sum(power_num)

	total = 0

		(power_num * (9 ** power_num)).times do |i|
			total += i if i == i.to_s.split('').inject(0) {
				|sum, n|
				sum + n.to_i**power_num

			}
    end

	"Sum of all nums: #{total - 1}"
end

puts find_sum(5)
