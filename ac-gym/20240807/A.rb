# s = gets.chomp
N, M, X, T, D = gets.split(' ').map(&:to_i)

# 100 10 100 180 1
if M > X
  puts T
else
  puts T - ((X - M) * D)
end

# N才（現在）の時点でTセンチ身長がある
# X才まで身長はDセンチずつ伸びた
# M才の誕生日の時点で何センチか？