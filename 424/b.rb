n, m, k = gets.split.map(&:to_i)

# n = 人、m = 問題、k = イベント（人Aiが問題Biに正解した）

hash = {}
result = []

n.times do |n|
    hash[n + 1] = 0
end

k.times do
    a, _b = gets.split.map(&:to_i)
    hash[a] += 1
    result << a if hash[a] == m
end

puts result.join(' ')

# 答え
# すべての問題に正解した人の番号を全員出力してください。
# そのような人が複数いる場合は、すべての問題に正解したタイミングが早い順に出力してください。


# 解き方
# 1. 人と問題の正解数をマッピングしたハッシュ、全問正解した人の変数（result）、を取っとく
# 2. mの数正解したか？をk回ループする
# 3. 全問正解した順にresultに入れて出力