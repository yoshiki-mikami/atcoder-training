x = gets.to_i
n = gets.to_i
w = gets.split.map(&:to_i)
q = gets.to_i
p = q.times.map { gets.to_i }

# x = 初期の重さ
# n = 部品の種類数
# W_i = 部品の重さ
# q = クエリ数
# P_i = 部品がついていない場合は取り付け、ついている場合は取り外す。その後、現在のロボットの重さを出力する。

current_weight = x
attached_part_nums = []

q.times do |i|
    parts_num = p[i]
    parts_weight = w[parts_num - 1]

    if attached_part_nums.include?(parts_num)
        attached_part_nums.delete(parts_num)
        current_weight -= parts_weight
    else
        attached_part_nums << parts_num
        current_weight += parts_weight
    end

    puts current_weight
end