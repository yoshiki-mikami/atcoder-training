s = gets.chomp

s_array = s.chars

# sをループで回す
#があったとこのインデックス番号をとっておく
# 偶数個ずつ分けてカンマ区切りの文字列を作る
# 出力

num_results = []

s_array.each.with_index do |s, i|
  if s == '#'
    num_results << i + 1
  end
end

tmp_results = num_results.each_slice(2).to_a
results = tmp_results.map { |arr| arr.join(',') }

puts results
