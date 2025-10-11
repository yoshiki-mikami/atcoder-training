n, l, r = gets.split.map(&:to_i)
s = gets.chomp

s_array = s.chars

results = []
(l..r).each do |n|
  results << s_array[n - 1]
end

puts results.all? { |s| s == 'o' } ? 'Yes' : 'No'
