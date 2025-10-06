n, m = gets.split.map(&:to_i)
a = []
b = []

m.times do
  a_i, b_i = gets.split.map(&:to_i)
  a << a_i
  b << b_i
end

result = {}

n.times do |i|
  num = i + 1
  result[num] = 0
end

m.times do |i|
  a_i = a[i]
  b_i = b[i]

  result[a_i] += 1
  result[b_i] += 1
end

puts result.values
