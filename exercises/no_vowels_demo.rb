def strip_vowels(string)
  string.gsub(/[aeiou]/i, '')
end

puts strip_vowels("This website is for losers LOL!")
