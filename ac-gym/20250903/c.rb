n = gets.to_i

x_array = []
y_array = []

n.times do
  x, y = gets.split.map(&:to_i)
  x_array << x
  y_array << y
end

# 選ばれた 3 点を線分で結んだ図形が正の面積を持つ三角形になる
# 点の選び方の総数を求めてください。

