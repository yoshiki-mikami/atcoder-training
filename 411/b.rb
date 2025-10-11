n = gets.to_i
d = gets.split.map(&:to_i)

# 駅1から駅2、　駅1から駅3、みたいに駅Nまでのそれぞれの距離を求める
# 次は駅2から駅3、駅2から駅4、みたいに求める
# 最後はN-1からNを求める

# 手順
# nの数字を一つずつ愚直にループする
# dの開始地点をずらしながら、dを加算していく
# いや、これ累積和だ

# 1. 開始地点を1から順番に移動させる
# 2. 開始地点から、累積和する
# 3. 累積和したのをresultに突っ込む
# 4. 開始地点がN-1まで繰り返す

results = []

n.times do |i|
  start_period = i + 1
  tmp = []
  d.map.with_index do |num, i2|
    # 開始位置の調整
    next unless i <= i2

    if tmp.size == 0
      tmp << num
      next
    end

    tmp << tmp[tmp.size - 1] + num
  end
  results << tmp
end

results.each do |result|
  puts result
end
