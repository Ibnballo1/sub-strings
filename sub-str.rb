def sub_str(words, dictionary)
  hash = {}
#   p words.include?("b")
  # first, I will loop through each element of the dictionary
  dictionary.each_with_index do |word, index|
    new_word = ''
    count = 0
    # so, i will take each element of the dictionary
    # and check if all its character is in the words argument
    word.each_char do |character|
      # if each of this character is in the words
      # then add the word(the element) to the hash as key and the times it appears as value
      if words.include?(character)
        new_word += character
      end
    end
    if new_word == word
      count += 1
      hash[new_word] = count
      p "new word #{new_word}"
      p "hash word is #{hash.key(count)}"
      # if hash.key?(new_word)
      # end
    end

  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part", "low", "partner","sit", "bow"]
words = "below"

p sub_str(words, dictionary)