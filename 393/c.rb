# 3 5
# 1 2
# 2 3
# 3 2
# 3 1
# 1 1

# 何本辺を取り除けばいいか本数を答える
# 配列の値が等しい辺、配列の組み合わせが重複してる辺を集める
# まず全体ソートする
# キーに対するバリューのハッシュを作る
# 両辺が等しい場合、もしくは同じ組み合わせがある場合はresultに+1
# どちらでもない場合、ハッシュに構造を追加


n, m = gets.split.map(&:to_i)
side_array = []
sorted_array = []

# { u（左辺）: { v（右辺）: true } }
hash = {}

m.times do |i|
    side_array << gets.split.map(&:to_i)
end

side_array.each do |array|
    array.sort!
    sorted_array << array
end

result = 0

side_array.each do |array|
    
    u = array[0].to_s
    v = array[1].to_s

    if u == v
        result += 1
        next
    end

    if hash[u].nil?
        hash[u] = { "#{v}" => true }
        next
    end

    if hash[u][v].nil?
        hash[u][v] = true
    else
        result += 1
    end
end

puts result