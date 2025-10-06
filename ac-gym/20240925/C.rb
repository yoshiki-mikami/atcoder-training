N = gets.chomp.to_i
s = []
t = []
tmp = []

N.times do
  tmp.push(gets.chomp)
end

a = tmp.uniq { |item| item[0] }

puts a
