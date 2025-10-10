a = gets.split.map(&:to_i)

# 同じ数字が3枚かつ、同じ数字が2枚あること
# 同じ数字が3枚,4枚かつ、同じ数字が2枚、3枚
results = {}

a.each do |a_i|
  if results[a_i].nil?
    results[a_i] = 1
  else
    results[a_i] += 1
  end
end

x = results.values.sort.reverse[0]
y = results.values.sort.reverse[1]

if y.nil?
  puts 'No'
  return
end

result = x > 2 && y > 1 ? 'Yes' : 'No'
puts result