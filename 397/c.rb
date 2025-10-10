n = gets.to_i
a = gets.split.map(&:to_i)

# ただちゃんに教えてもらった。悔しい。
# 「左からN番目の時の種類数はX」の配列を持つ
# 詳細
#   初登場する番号を持っておき、合計のカウントにプラス1する
# 「右からN番目の時の種類数はX」の配列を持つ
# 両端からカウントした値を足して、その中のマックスを調べる

# # 2 5 6 5 2 1 7 9 7 2
# [1, 2, 3, 3, 3, 4, 5, 6, 6, nil] # 左
# [nil, 6, 6, 5, 4, 4, 3, 3, 2, 1] # 右

uniq_nums = {}
max_index = a.count - 1

# 左から
type_counts_from_left = []
n.times do |i|
  target_num = a[i]
  uniq_nums[target_num] = 1 if uniq_nums[target_num].nil?

  type_counts_from_left << uniq_nums.size
end

uniq_nums = {}
# 右から
type_counts_from_right = []
n.times do |i|
  target_num = a[max_index - i]
  uniq_nums[target_num] = 1 if uniq_nums[target_num].nil?

  type_counts_from_right << uniq_nums.size
end

type_counts_from_right = type_counts_from_right.sort.reverse

max_count = 0
n.times do |i|
  break if i == max_index

  left_num = type_counts_from_left[i]
  right_num = type_counts_from_right[i + 1]
  count = left_num + right_num

  max_count = [max_count, count].max
end

puts max_count
