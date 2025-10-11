 n = gets.to_i
 p_array = gets.split.map(&:to_i)

#  { Ni: 点数 }
humans = {}
# { Ni: 順位 }
results = {}
n.times do |i|
    humans[i + 1] = p_array[i]
    results[i + 1] = 0
end

#  目的
# 各人が何位かを出力する

# 1. humansの中から一番大きい値を取得
# 2. 該当する人の順位を記録
# 3. 2.の合計人数を使って、現在の最新の順位を取っておく

latest_rank = 1

p_array.uniq.sort.reverse.each.with_index do |max_point, i|
    num_of_max_point_human = 0

    # binding.irb
    humans.each.with_index do |human, i|
        k = human[0]
        v = human[1]
        if v == max_point
            results[i + 1] = latest_rank
            num_of_max_point_human += 1
        end
        # binding.irb
    end
    latest_rank += num_of_max_point_human
end

results.each_value do |result_value|
    puts result_value
end

# 4
# 3 12 9 9
