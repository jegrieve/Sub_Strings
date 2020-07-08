def substrings(word, dictionary)
    sub_strings = Hash.new(0)
    k = word.length - 1
    while k > 0
        word.each_char.with_index do |letter, i|
        sub_strings[word[i..k]] += 1 if dictionary.include?(word[i..k])
        end
        k -= 1
    end
    sub_strings
end

#   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#    p substrings("below", dictionary)
