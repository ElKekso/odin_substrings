def substrings(string, dictionary)
  string = string.downcase
  string_arr = string.split(' ')
  hash = Hash.new

  for dic_word in dictionary
    for str_word in string_arr
      if str_word.include?(dic_word) then
        if hash[dic_word].nil? then
           hash[dic_word] = 1
          next
        end
        hash[dic_word] += 1
      end
    end
  end
  hash
end