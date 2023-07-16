def sub_str(words, dictionary)
  hash = {}
  value = 0
  new_str = words.split(' ').each {|str| str}
  new_str.each do |text|
    dictionary.each_with_index do |word, index|
      new_word = ''
      word, text = word.downcase, text.downcase
      word.each_char {|character| new_word += character if text.include?(character)}
      if new_word == word
        if hash.has_key?(new_word)
          value = hash[new_word] + 1
          hash[new_word] = value
        else
          hash[new_word] = 1
        end
      end
    end
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word1 = "below"
word2 = "Howdy partner"
word3 = "Howdy partner, sit down! How's it going?"

p sub_str(word1, dictionary)
p sub_str(word2, dictionary)
p sub_str(word3, dictionary)