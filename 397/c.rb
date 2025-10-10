n = gets.to_i
a = gets.split.map(&:to_i)

# 思考の整理
# とりあえず、重複してる数字が何かがわかる必要はある
# 一旦ソートしてみるか

# 解き方
# 1. 毎ループごとに両端の配列に対して累積和を実行し、その合計をとる
# 2. 合計のカウント数を返す

# 1.の詳細
# n回のループでループのインデックスで配列を分割する
# それぞれ種類数の累積和で数を足す

maximum_count = 0

def sum_class_count(array)
  sum_types = {}

  array.each do |s|
    if sum_types[s].nil?
      sum_types[s] = 1
    else
      sum_types[s] += 1
    end
  end

  sum_types.keys.count
end

n.times do |i|
  before_array = a[0..i]
  after_array = a[(i + 1)..]

  total_count = sum_class_count(before_array) + sum_class_count(after_array)

  next unless maximum_count < total_count

  maximum_count = total_count
end

puts maximum_count