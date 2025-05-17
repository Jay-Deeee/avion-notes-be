def is_isogram(word)
  ("a".."z").all? { |char| word.downcase.count(char) <= 1 }
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")
