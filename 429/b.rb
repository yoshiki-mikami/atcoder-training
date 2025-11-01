n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# aの中から、一つを除いたそれ以外の和を調べる
# 全部試す

result = a.any? do |a_i|
    m == (a.sum - a_i)
end

puts result ? "Yes" : "No"