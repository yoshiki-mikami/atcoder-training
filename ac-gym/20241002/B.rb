N, K = gets.chomp.split(' ').map(&:to_i)
I = gets.chomp.split(' ').map(&:to_i)

puts I.max(K).sum
