def caesar_cipher(string, shift_value = 3)
  unless string.match?(/\A[a-zA-Z]+\z/)
    return "You must write a word with only letters"
  end

  string.chars.map do |char|
    base = char == char.upcase ? 'A'.ord : 'a'.ord
    (((char.ord - base + shift_value ) % 26) + base).chr
  end.join
end

puts "Input word:"
input = gets.chomp
puts caesar_cipher(input)
