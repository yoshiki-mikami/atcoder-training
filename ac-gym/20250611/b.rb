n, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# もらう情報は、曲数・止める時間・各曲の秒数
# 曲番号、その曲の秒数を求める

# 各曲の秒数を合計して、止める時間に割ったあまりを出す
# あまりから曲番号1から順番に引いていく
# 引ききれなくなった曲番号に当たったら、その曲の番号、あまりの秒数を出力する

answer1 = 0
answer2 = 0

amari = t % a.sum

a.each.with_index do |song, i|
  if amari >= song
    amari = amari - song
  else
    answer1 = i + 1
    answer2 = amari
    break
  end
end

puts "#{answer1} #{answer2}"