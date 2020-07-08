def substrings(word, dictionary)
    dictionary = dictionary
    sub_strings = Hash.new(0)
    k = word.length - 1
    while k > 0
        # sub_strings[word[0..i]] += 1 if dictionary.include?(word[0..i])
        word.each_char.with_index do |letter, i|
        sub_strings[word[i..k]] += 1 if dictionary.include?(word[i..k])
        end
        k -= 1
    end
    sub_strings
end

#   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   p substrings("below", dictionary)
