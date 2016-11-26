s = "dir1\n dir11\n dir12\n  picture.jpeg\n  dir121\n  file1.txt\ndir2\n file2.gif"

def solution(s)
  sum = 0
  result = ""
  s.split().each_with_index { |s, i|
    if s =~ /[a-zA-Z1-9]+\.(:?jpeg|gif|png)/
      result += "/" + s.strip
      sum += result.length
      result = "/"
    elsif s =~ /[a-zA-Z1-9]+\.[a-zA-Z0-9]+/
      next
    else
      s.match(/(\s*)(.*)$/).captures[0].length
      result += "/" + s
    end
  }
  sum
end

puts solution(s)