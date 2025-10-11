n = gets.to_i
s_array = []
n.times { s_array << gets.chomp }

results = []

# 1. 配列内の自分を除く全てと一つ一つを結合
# 2. resultsに格納
# 3. 重複を削除

s_array.each.with_index do |s, i|
  n.times do |i2|
    if i != i2
      results << "#{s}#{s_array[i2]}"
    end
  end
end

puts results.uniq.size
