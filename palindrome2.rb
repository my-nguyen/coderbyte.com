def PalindromeTwo(string)
  blanks = " ,-!"
  string.chomp!.downcase!
  i = 0
  j = string.length-1
  while true
    while blanks.include?(string[i])
      i += 1
    end
    while blanks.include?(string[j])
      j -= 1
    end
    if i < j
      if string[i] != string[j]
        return "false"
      else
        i += 1
        j -= 1
      end
    else
      return "true"
    end
  end
end

puts PalindromeTwo(STDIN.gets)
