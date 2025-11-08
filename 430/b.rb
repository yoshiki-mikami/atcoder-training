n, m = gets.split.map(&:to_i)
s = n.times.map { gets.split }

# 行はi, 列はj
# n * nでループを回す、
# 縦はs[i][n...(n + m)]縦はs[i][n...(n + m)]

# n.times do |i|
#     row = s[i][i...(i + m)]

#     n.times do |j|

#     end
# end