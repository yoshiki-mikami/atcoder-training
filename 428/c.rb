q = gets.to_i
queries = []
q.times { queries << gets.split }

# # 目的
# # 以下で説明されるクエリを与えられる順に Q 個処理して、
# # 各クエリの直後に S が良い括弧列であるかを判定してください。

# # 1 c: 文字 c が与えられる。c は ( または ) である。c を S の末尾に追加する。
# # 2: S の末尾の文字を削除する。この時、S は空文字列でないことが保証される。

# # (が)で閉じられていればいるか？を判定する

# # 解き方
# # ループして、(を足しつつ、判定と出力を行う
# # kakkoを見ながらおこなう。

# # 条件は以下
# # 1. 始まりが「(」である
# # 2. 終わりが「）」である
# # 3. 空文字である
# # 4. 「(」と「)」の数が等しい
# # 5. 前からカウントしていき、「(」の数が「)」の数を超えない

# # ※ 配列にすると絶対TLE
# s = []

# # ※ 配列にすると絶対TLE
# def judge(s)
#     if s.empty?
#        return true 
#     end

#     unless s[0] == "("
#         return
#     end

#     unless s[-1] == ")"
#         return
#     end

#     # TLE
#     unless s.tally.values.uniq.size == 1
#         return
#     end

#     # TLE
#     start_count = 0
#     end_count = 0
#     s.all? do |s|
#         if start_count < end_count
#             return false 
#         end

#         if s == "("
#             start_count += 1
#         end

#         if s == ")"
#             end_count += 1 
#         end

#         true
#     end
# end

# q.times do |i|
#     query = queries[i]

#     if query[0] == "1"
#         s << query[1]
#     end

#     if query[0] == "2"
#         s.pop
#     end

#     puts judge(s) ? "Yes" : "No"
# end

# ※ 配列にすると絶対TLE
def judge(s, start_count, end_count)
    # binding.irb
    if s.empty?
       return true 
    end

    unless s[0] == "("
        return
    end

    unless s[-1] == ")"
        return
    end

    # TLE
    if start_count != end_count
        return
    end

    # TLE
    # start_count = 0
    # end_count = 0

    if start_count < end_count
        return
    end
    # s.all? do |s|
    #     if start_count < end_count
    #         return false 
    #     end

    #     if s == "("
    #         start_count += 1
    #     end

    #     if s == ")"
    #         end_count += 1 
    #     end

    #     true
    # end

    true
end


# ※ 配列にすると絶対TLE
s_hash = {
    "(": 0,
    ")": 0
}
s = ""
start_count = 0
end_count = 0

q.times do |i|
    query = queries[i]

    if query[0] == "1"
        # s_hash[query[1]] += 1
        s << query[1]
        start_count += 1 if query[1] == "("
        end_count += 1 if query[1] == ")"
    end

    if query[0] == "2"
        # s_hash[s[-1]] -= 1
        start_count -= 1 if s[-1] == "("
        end_count -= 1 if s[-1] == ")"
        s = s.chop
    end

    puts judge(s, start_count, end_count) ? "Yes" : "No"
end
