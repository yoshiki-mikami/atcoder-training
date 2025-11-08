n, a, b = gets.split.map(&:to_i)
s = gets.chomp

# 目的
# 'a'がA以上ある、かつ'b'がB未満しかない区間が何個あるか？を答える

# 順当に解く
# まず全探索で考える
# aを頭から数えていって、(aの数を一つずつスライド)aとbの数をカウントしていく。
# bがB以上あったらリセットして、もう一回カウント開始
# 条件に一致する場合、resultにカウントプラス1

# ココカラ考える
# 一度も成功せず失敗パターン
# bの数で失敗した場合、最初の'b'のインデックス + 1から始める

# 一度以上成功したパターン
# カウント+1, 一度の判定でtrueが複数ある場合、result_countにそれプラス1する
# bの数で失敗した場合、最新のbのindexからA個分引く + 1のindexから始める

first_b_index = nil
success = false
result_count = 0

a_count = 0
b_count = 0

i = 0

while i < n
    if s[i] == 'a'
        a_count += 1
    end

    if s[i] == 'b'
        first_b_index = i if first_b_index == nil
        b_count += 1
    end

    if (a_count >= a) && (b_count < b)
        result_count += 1
        result_count += 1 if success 
        success = true
    end

    if b_count == b
        a_count = 0
        b_count = 0

        if success
            i = i - a + 1
        else
            i = first_b_index + 1
        end

        success = false
        first_b_index = nil
        next
    end

    i += 1
end

puts result_count