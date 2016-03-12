# A permutation is an ordered arrangement of objects. For example, 3124 is one possible 
# permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically 
# or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# Q: What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?


class Integer
  def factorial
    return 1 if self == 0
    (1..self).inject(1,:*)
  end
end
 
def how_many_lexis(nth, n)
  digits = "0123456789"
  combos = ""
  (0..n).each do |i|
    facts = (n - i).factorial
    num = nth / facts
    combos += digits[num]
    nth -= facts * num
    digits = digits.delete(digits[num])
  end
  "Total number of lexiographic permutations: #{combos}"
end

puts how_many_lexis(999999, 9)