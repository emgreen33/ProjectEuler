words = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  1000 => "onethousand"
}

class Fixnum
  def to_english(words)
    str = ""
    if self >= 100 && self < 1000
      str = "#{words[(self/100)]}hundred"
      if self % 100 > 0
        str = "#{str}and#{(self % 100).to_english(words)}"
      end 
    elsif self > 20
      str = "#{words[(self / 10) * 10]}#{words[self % 10]}"
    # elsif self == 1000
    #   str = "onethousand"
    else
      str = words[self]
    end
    str
  end
end

total = 0


(1..1000).each do |i|
  thisNum = i.to_english(words).size
  puts thisNum
  total += thisNum
end

puts total 