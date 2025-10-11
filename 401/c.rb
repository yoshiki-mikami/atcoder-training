N, K = gets.split.map(&:to_i)

MOD = 10 ** 9
A = []

K.times do |i|
  A << 1
end

sum = [0]

(A.length).times do |i|
  sum << (A[i] + sum[i]) % MOD
end

# ここまでにやった処理のおさらい
# Kが500000、Nが1000000の場合

# Aが[1, 1, 1, 1, 1, 1...]が500000個値が入った配列
# sumが[0, 1, 2, 3, 4...]みたいな累積和で出した配列

(K...(N + 1)).each do |n|
  A << (sum[n] - sum[n - K]) % MOD
  sum << (A[n] + sum[n]) % MOD
end

puts A[N]
