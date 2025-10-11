N, Q = gets.split.map(&:to_i)
queries = []
Q.times do
  queries << gets.split.map(&:to_i)
end
A = []
N.times { |n| A << n + 1 }

# Aがある。Anは長さNの整数列で、初めはインデックス＝値
# Qをループさせて、クエリを機械的に処理する
# Qが3*10**5なんで、処理が2乗倍になるので2重ループしたらほぼアウト。

# queryのタイプは3以外簡単
# TODO: 3の時、処理未定。そのまま繰り返すと終わる
  # 配列をsplitすればいいんじゃね？kの値のインデックスを起点に
  # 制約が邪魔だ。kの上限値の方が多い
  # 余りをとってきて、前からインデックスで前の値をカット→後ろに追加する

# queries.each do |query|
#   type = query[0]
#   if type == 1
#     p = query[1]
#     x = query[2]
#     A[p - 1] = x
#   elsif type == 2
#     p = query[1]
#     puts A[p - 1]
#   else # 3
#     k = query[1]
#     if A.count < k
#       k = k % A.count
#     end
#     tmp_array = A.slice!(0, k)
#     A.concat(tmp_array)
#   end
# end

# 配列を操作しない方針にする
# スタートする配列番号を押さえておいて、（k）そこからタイプ1と2はインデックスの開始位置を各自計算してもらうようにする
# タイプ1と2のロジックがちょっとややこしくなるけど、計算量大したことないからそこに負担してもらう作戦

current_index = 0
max_index = N

queries.each do |query|
  type = query[0]
  if type == 1
    p = current_index + (query[1])
    p -= max_index if max_index < p
    x = query[2]
    A[p - 1] = x
  elsif type == 2
    p = current_index + (query[1])
    p -= max_index if max_index < p
    puts A[p - 1]
  else # 3
    k = query[1]
    if A.count < k
      k = k % A.count
    end
    current_index += k
    current_index -= max_index if max_index < current_index
  end
end
