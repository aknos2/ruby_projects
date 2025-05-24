dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  text = text.downcase
  result = Hash.new(0)

  dictionary.each do |word|
    matches = text.scan(word.downcase)
    result[word] = matches.length unless matches.empty?
  end

  result
end

puts "Write any text"
input = gets.chomp
puts substrings(input, dictionary)


