X = 233614

def solution(x)
  digits = x.to_s.chars.map(&:to_i)
  len = digits.length
  # digitsClone = digits.clone
  possibles = digits.map.with_index{ |d, i|
    if i+1 == len
      nil
    else
      clone = digits.clone
      clone.delete_at(d > digits[i+1] ? i + 1 : i)
      clone.map(&:to_s).join.to_i
    end
  }.compact
  possibles.min
end


puts solution(X).to_s