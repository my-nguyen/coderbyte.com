def RunLength(string)
  result = ""
  current = nil
  count = 0
  string.each_char do |char|
    if char != current
      result << "#{count}#{current}" if !current.nil?
      current = char
      count = 1
    else
      count += 1
    end
  end
  result << "#{count}#{current}"
  puts result
end

while line=gets
  RunLength(line.chomp)
end
