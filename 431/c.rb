require 'set'

n, m, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

# ary = [0,2,4,8,16,32,64,128,256,512,1024]
# i = 0
# while i < ary.length
#   print ary[i]
#   i += 1
# end

robot_count = 0
h_max_index = n - 1

h = h.sort.reverse
b = b.sort.reverse

h_index = 0
m.times do |i|
    # bよりhが大きい場合、次を試す。
    # hと同じかhが小さい場合、次のループに進む

    while h_max_index >= h_index
        if b[i] >= h[h_index]
            robot_count += 1
            h_index += 1

            break
        end
        h_index += 1
    end
end

puts robot_count >= k ? 'Yes' : 'No'


# -------------------------
# old answer
# -------------------------

# 頭hグラム, n個 、体bグラム, m個の組み合わせでK体ロボットを作れるか？

# 解き方
# Bodyから見て、一番重いかつロボットが作れるheadを取ってくるようにすれば良い

# 現時点での解き方
# bodyから見てrobotを作れてかつ一番大きなheadを取ってくる
# headとbodyのインデックスを取っておいて、それは見ないことにする

# exclude_h_index = Set.new
# exclude_b_index = Set.new
# robot_count = 0

# m.times do |m_i|
#     next if exclude_b_index.include?(m_i)

#     # 該当する頭を全部取ってくる
#     # ここでTLE
#     success_head_weights = {}
#     n.times do |n_i|
#         next if exclude_h_index.include?(n_i)

#         if h[n_i] <= b[m_i]
#             success_head_weights[h[n_i]] = n_i
#         end
#     end

#     # 該当しない場合はスルー
#     if success_head_weights.empty?
#         next
#     end
    
#     # カウントプラス1
#     robot_count += 1

#     # 使ったindexを取っておいて、毎回除外する
#     head = success_head_weights.max
#     head_weight = head[0]
#     head_index = head[0]
#     exclude_h_index.add(head_index)
#     exclude_b_index.add(m_i)
# end

# puts robot_count >= k ? 'Yes' : 'No'

# 頭hグラム, n個 、体bグラム, m個の組み合わせでK体ロボットを作れるか？

# 考えた解き方
# hとbをソートする
# hを大きい順に見ていって、一番最初にrobotを作れるhを取得する
#   hのindexを取っておいて、次からそのindexからスタートする
# headとbodyのインデックスを取っておいて、それは見ないことにする
