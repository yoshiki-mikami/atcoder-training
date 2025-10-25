s, a, b, x = gets.split.map(&:to_i)

# チャイムがなって何メートル走れるか

# s　秒速
# a　走る時間
# b　静止時間
# X 合計の経過時間

# 秒速と走る時間で何メートル走るか調べる
# そのあと静止する時間も足す


# 間隔の合計時間
total_time = (a + b)
# 間隔数
split_count = x / total_time
# あまり
# あまりが走る時間より多い場合、走る最大時間で計算する
# 走る時間より少ない場合、あまりで計算する
mod = x % total_time
mod = mod > a ? a : mod

# 間隔数と秒速をかける
result = (split_count * (s * a))

result += s * mod

puts result 
 