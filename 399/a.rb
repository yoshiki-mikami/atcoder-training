n = gets.to_i
s = gets.chomp
t = gets.chomp

count = 0

n.times do |i|
    if s.chars[i] != t.chars[i]
        count += 1
    end
end

puts count