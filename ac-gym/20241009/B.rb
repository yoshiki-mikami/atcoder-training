S = gets.chomp

guusuu = S.each_char.map.with_index do |c, index|
  index += 1
  c if index.even?
end.compact

kisuu = S.each_char.map.with_index do |c, index|
  index += 1
  c if index.odd?
end.compact

ok = kisuu.all? do |s|
  %w[R U D].include?(s)
end

ok2 = guusuu.all? do |s|
  %w[L U D].include?(s)
end

result = ok && ok2

puts result ? 'Yes' : 'No'
