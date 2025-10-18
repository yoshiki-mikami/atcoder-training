s = gets.chomp

count = s.chars.count
target_index = count / 2

result = ''
s.chars.each.with_index do |s, i|
    next if i == target_index

    result = "#{result}#{s}"
end

puts result