# 回答
# 重複してない数のうちの最大の数を持ってる人間（index）を出力、いなければ-1を出力

# 解き方
# aの中で、重複してる人を除外
# 0件の場合は-1, 1件以上ある場合は一番大きい数の人を抽出

# 人 = { sequence: 持ち番号 } の構造体を作る
  # 配列でいいやん
# 別で count_list = { 持ち番号: カウント } の構造体を作る
# 人の番号から数が1のものを抽出 → その中で一番大きい番号をとっとく
# 人の中から持ち番号で調べて出力

n = gets.to_i
a = gets.split.map(&:to_i)

count_list = {}

a.each do |a|
  if count_list[a].nil?
    count_list[a] = 1
  else
    count_list[a] += 1
  end
end

uniq_count_list = count_list.map do |num, count|
  next if count > 1

  num
end.compact

puts '-1' if uniq_count_list.empty?
max_num = uniq_count_list.max

a.each.with_index do |a, index|
  puts index + 1 if a == max_num
end
