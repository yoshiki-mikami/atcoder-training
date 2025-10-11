str_arr = [
  'abc',
  'def',
  'ghi',
]

depth = 3

# 最終的に、全探索的に文字列を結合した集合を出力したい。
# 今回の場合は、3つの文字列を一旦3通りなので、27個文字ができるはず
# 一旦寝て、記憶リセットしてからやる。これは絶対にやる。
# カンニングしてACしてしまったので、日曜日何時間使ってでもこれは解く。
# このままだと信頼をなくしてしまうので、なんとしても再帰関数を1日でマスターする
# そして2度とコンテスト中にChatGPTは開かない。

results = []

str_arr.each do |s_1|
  tmp1 = s_1
  str_arr.each do |s_2|
    tmp2 = tmp1 + s_2
    str_arr.each do |s_3|
      tmp3 = tmp2 + s_3
      results << tmp3
    end
  end
end

# puts results
# puts results.size


# str_arr.sizeのdepth乗回ループする必要がある
results = []
current = ''

depth.times do |i|
  str_arr.each do |s|
    current + s
  end
end

def recursive(str_arr, depth, current = '', results = [])
  if depth == 0
    results << current
    return
  end

  str_arr.each do |s|
    tmp_s = current + s
    nest = depth - 1
    recursive(str_arr, nest, tmp_s, results)
  end

  results
end

puts recursive(str_arr, depth)
puts recursive(str_arr, depth).size