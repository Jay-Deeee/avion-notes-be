def find_smallest_integer(a)
  smallest = a[0]
  for num in a
    if num < smallest
      smallest = num
    end
  end
  smallest
end

def count_positives_sum_negatives(b)
  if b != []
    posi = b.select { |element| element > 0 }
    nega = b.select { |element| element < 0 }
    [posi.length, nega.sum]
  else
    b = []
  end
end

def liters(c)
  value = c * 0.5
  value.floor
end

def is_isogram(d)
  ("a".."z").all?{|char| d.downcase.count(char) <= 1}
end

def unique_in_order(e)
  e = e.is_a?(String) ? e.chars : e
  e.each_with_object([]) do |item, result|
    result << item if result.empty? || result.last != item
  end
end

def strip_vowels(f)
  result = f.gsub(/[aeiou]/i, '')
  return result
end

def century(g)
  base_century = g / 100
  remainder = g % 100
  if remainder == 0
    base_century
  else
    base_century + 1
  end
end

def list_names(h)
  names = h.map { |person| person[:name] }
  case names.length
  when 0
    ""
  when 1
    names[0]
  when 2
    names.join(" & ")
  else
    "#{names[0..-2].join(', ')} & #{names[-1]}"
  end
end
