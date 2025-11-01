n = gets.to_i
a = gets.split.map(&:to_i)

# 目的
# 3つの組み合わせを調べる
# 二つ等しい、一つ違うものは＋１
# 合計値を出す

# 一旦の解き方
# 頭から、全通りを試す
# 条件に当たる組み合わせはカウントして、最後に出力する

# result_count = 0

# a.each.with_index do |a_i, index_1|
#     break if index_1 == (n - 2)
    
#     a[(index_1 + 1)..].each.with_index do |a_j, index_2|
#         break if index_2 == (n - 2)

#         a[(index_1 + index_2 + 2)..].each do |a_k|
#             if [a_i, a_j, a_k].uniq.size == 2
#                 result_count += 1
#             end
#         end
#     end
# end

# puts result_count

# 5
# 3 2 5 2 2


# 1つ目のa[0..(n - 2)], 2つ目のa[1..(n - 1)], 3つ目のa[2..]の配列をそれぞれ準備する
# 1度目のループで1つ目と2つ目の配列から


result_count = 0

# set.each 

hash = {}
a.each { |a| hash[a] += 1 }

a.each_value do |v|
    next if v < 2

    count = (value * (value - 1) / 2) * (n - value)
    result_count += count
end

puts result_count