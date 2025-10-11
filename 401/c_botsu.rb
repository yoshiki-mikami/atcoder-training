N, K = gets.split.map(&:to_i)

A = []

(N + 1).times do |i|
  if i < K
    A << 1
    next
  end

  if K <= i
    tmp = []
    K.times do |i2|
      tmp << A[i - K + i2]
    end
    A << tmp.sum
  end
end

puts A.last % (10 ** 9)
