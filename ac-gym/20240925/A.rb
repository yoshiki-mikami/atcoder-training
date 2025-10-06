S = gets.chomp

def validate(s)
  %w[ACE BDF CEG DFA EGB FAC GBD].include?(s)
end

puts validate(S) ? 'Yes' : 'No'
