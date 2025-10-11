q = gets.to_i
queries = []
q.times { queries << gets.split.map(&:to_i) }

mod = 10 ** 9
a_array = []
sum_array = []
g_index = 0

queries.each do |query|
  if g_index > mod
    g_index = g_index % mod
    a_array = a_array[mod..]
    sum_array = sum_array[mod..]
  end

  type = query[0]

  if type == 1
    c_count = query[1]
    x_num = query[2]
    c_count.times do |i|
      a_array << x_num
      if sum_array.empty?
        sum_array << x_num
      else
        a_array_max_index = a_array.size - 1
        sum_array << (x_num + sum_array[a_array_max_index - 1])
      end
    end
  else
    k_count = query[1]
    puts sum_array[g_index + k_count] - sum_array[g_index]
    g_index += k_count
  end
end


# クエリごとに処理する
# タイプ1、配列にc個の数字を追加
# タイプ2、配列の数字をk個削除して、総和を出力

# メモ：
# 順番にひたすら処理をする
# 注意：
# 1. クエリ数が2 * (10**5)なので、結構計算量厳しい
# 2. cとxはmaxが10**9なのでmodが必要
# 3. k個削除するときの要素数は保証されてるので気にしなくていい
# 4. 配列Aは特に制約なし
