N, X = gets.chomp.split.map(&:to_i)
s = gets.chomp

s.each_char.with_index do |c, i|
  X += 1 if c == 'o'

  X -= 1 if c == 'x' && X != 0
end

puts X
