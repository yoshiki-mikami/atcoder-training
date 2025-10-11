s = gets.chomp

# charsでループ回す
# 2種類を取っておく
# 2種類揃うかつ片方が1個でも重複してると処理中断

chars = []

def duplicate_char(chars)
    chars.select{|v| chars.count(v) > 1}.uniq.first
end

s.chars.uniq.each do |char|
    next if char == duplicate_char(s.chars)

    puts char
end
