N = gets.chomp.to_i

x = []
u = []

N.times do
  tmp = gets.chomp.split(' ')
  x << tmp[0].to_f
  u << tmp[1]
end

result = 0

N.times do |i|
  if u[i] == 'JPY'
    result += x[i]
    next
  end

  result += (x[i] * 380_000.0)
end

puts result
