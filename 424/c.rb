n = gets.to_i

# ・前提
# 習得済みスキル番号を取っておく変数(result)を持っとく
# 1. まず習得済みスキルを把握する必要があるので、(0, 0)だけを探すために全探索。resultに取っとく
# 2. 1.を把握した上で、もう一度全探索して、その数字がresultに含まれているかを調べて、含まれていればresultにインデックス番号を追加する

result_skill_nums = {}
skill_pair = {}
learned_skill_nums = {}

n.times do |i|
    # index + 1をスキル番号として取っとく
    skill_num = i + 1
    a, b = gets.split.map(&:to_i)
    skill_pair[a] = b

    # (0, 0)の時、そのスキルを習得済み
    if a == 0 && b == 0
        result_skill_nums[skill_num] = true
        learned_skill_nums[skill_num] = true
        next
    end
end

# n.times do |i|
#     skill_num = i + 1
#     # チェック済みなので外す
#     next if learned_skill_nums[skill_num]

#     a = a_array[i]
#     b = b_array[i]

#     if result_skill_nums[a] || result_skill_nums[b]
#         result_skill_nums[skill_num] = true
#         next
#     end
# end

# aとbをそれぞれソートして、再度判定し直す

skill_pair.sort.each.with_index do |pair, i|
    a = pair[0]
    b = pair[1]
    skill_num = i + 1
    # チェック済みなので外す
    next if learned_skill_nums[skill_num]

    if result_skill_nums[a] || result_skill_nums[b]
        result_skill_nums[skill_num] = true
        next
    end
end

skill_pair.invert.sort.each.with_index do |pair, i|
    b = pair[0]
    a = pair[1]
    skill_num = i + 1
    # チェック済みなので外す
    next if learned_skill_nums[skill_num]

    if result_skill_nums[a] || result_skill_nums[b]
        result_skill_nums[skill_num] = true
        next
    end
end

puts result_skill_nums.keys.count
