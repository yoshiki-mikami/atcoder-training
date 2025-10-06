s = gets.chomp
w = gets.to_i

s_array = s.chars
result = ''

s_array.each.with_index do |s, i|
  if i % w == 0
    result = "#{result}#{s}"
  end
end

puts result