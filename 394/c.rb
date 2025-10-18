s = gets.chomp

# WAをACに変換する

# 解き方
# Wを探しながら、resultに文字をためていく
# Wがあった場合、Wをtmp_sに取っておき、resultには何も文字を入れない
# 次もWなら同じようにtmp_sを溜めていく
# Aの時、かつtmp_sにWがあった場合、A＋Wの数だけCを連結してresultに貯める
# 最後のループで、tmp_sに文字があった場合、resultに貯める

result = []
tmp_s_array = []

s.chars.each.with_index do |s, i|
    if s == "W"
        tmp_s_array << "W"
        next
    elsif s == "A" && !tmp_s_array.empty?
        result << "A"
        tmp_s_array.size.times { result << "C" }
        tmp_s_array = []
    else
        tmp_s_array.each { |s| result << s }
        result << s
        tmp_s_array = []
    end
end


unless tmp_s_array.empty?
    tmp_s_array.each { |s| result << s }
end

puts result.join