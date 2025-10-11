require "set"

N, M, Q = gets.split.map(&:to_i)
queries = []
Q.times { |_| queries << gets.split.map(&:to_i) }

hash = {}
queries.each do |query|
  hash[query[1]] = Set.new unless hash.key?(query[1])
end

mod = 10 ** 5 * 2

queries.each_with_index do |query, i|
  if query[0] == 1
    hash[query[1]].add query[2] unless hash[query[1]].include?(mod + 1)
  end

  if query[0] == 2
    hash[query[1]] = Set[mod + 1]
  end

  if query[0] == 3
    puts hash[query[1]].include?(mod + 1) || hash[query[1]].include?(query[2]) ? "Yes" : "No"
  end
end
