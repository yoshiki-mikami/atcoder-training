# やること
# クエリの回数分、以下の実行する
# ・対象のosバージョンを上げる
# ・上げた後のバージョンを更新して持っておく
# ・バージョンを上げた台数の数を出力する

# 雑メモ
# 普通にループしたら(10**6) * (2 * 10**5)でアウト
# OSバージョン番号と台数を持たせる。
# それと別に、現在の最も古いOSバージョンを持っておく
# 1. アップグレードしなければいけない古いバージョンの合計台数を取得、出力
# 2. アップグレード台数の合計をOS番号の台数にプラスで追加
# 3. 現時点で最も古いバージョンを持っておく。1.でまた使う

n, q = gets.split.map(&:to_i)

# { バージョン番号: 合計台数 }
os_versions = {}

n.times do |n|
    os_versions[n + 1] = 1
end

oldest_os_version = 1

q.times do |n|
    x, y = gets.split.map(&:to_i)
    
    num_of_os_versions = 0
    required_upgrade_version_list = (oldest_os_version..x)

    required_upgrade_version_list.each do |version_num|
        num_of_os_versions += os_versions[version_num]
    end
    puts num_of_os_versions

    os_versions[y] += num_of_os_versions
    next if num_of_os_versions == 0

    oldest_os_version = x + 1
end

