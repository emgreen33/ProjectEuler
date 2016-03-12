#The Fibonacci sequence is defined by the recurrence relation:

#Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
#Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.

# Q: What is the index of the first term in the Fibonacci sequence to contain 1000 digits?

def index_of_fib(num)
	index = -1
	previous_fib = 0
	current_fib = 1
	while current_fib.to_s.length < num
	    index += 1
	    current_fib, previous_fib = previous_fib, previous_fib + current_fib
	end
	 
	"Index of the fib num: #{index}"
end

puts index_of_fib(1000)
