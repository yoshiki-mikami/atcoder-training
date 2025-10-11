# WA
n = gets.to_i

# ・前提
# 習得済みスキル番号を取っておく変数(result)を持っとく
# 1. (0, 0)が出てくるまでは全て破棄
# 2. (0, 0)が出てきた以降は、その数字がresultに含まれているかを調べて、含まれていればresultにインデックス番号を追加する

skill_nums = {}

n.times do |i|
    skill_num = i + 1
    a, b = gets.split.map(&:to_i)

    if a == 0 && b == 0
        skill_nums[skill_num] = ""
        next
    end

    # 
    if skill_nums[a] || skill_nums[b]
        skill_nums[skill_num] = ""
        next
    end
end

puts skill_nums.count