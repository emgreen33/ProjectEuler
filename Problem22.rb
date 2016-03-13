# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
# containing over five-thousand first names, begin by sorting it into alphabetical order. 

# Then working out the alphabetical value for each name, multiply this value by its 
# alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, 
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 × 53 = 49714.

# Q: What is the total of all the name scores in the file?

def alph_value(word)
  total = 0
  word.each_byte do |i|
    total += i - 64
  end
  total
end

def total_name_scores(file_name)
	file  = File.new(file_name, "r")
	names = eval("[" + file.gets + "]").sort
	total = 0

	file.close

	names.each_with_index do |name, i|
	  total += alph_value(name) * (i + 1)
	end

	"Total of all name scores: #{total}"
end

puts total_name_scores("./names.txt")

