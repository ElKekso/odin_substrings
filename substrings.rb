def substrings(string, dictionary)
  string_arr = string.downcase.split(' ')
  hash = Hash.new(0)

  for dic_word in dictionary
    for str_word in string_arr
      amount = str_word.scan(dic_word).length
      if amount > 0 then
        hash[dic_word] += amount
      end
    end
  end
  hash
end