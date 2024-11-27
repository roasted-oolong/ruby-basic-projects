#Implement a method #substrings that takes a word as the 
#first argument and then an array of valid substrings 
#(your dictionary) as the second argument. 
#It should return a hash listing each substring (case insensitive) 
#that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def subtrings(string, dictionary)
    split_string = string.downcase.split(" ")
    final_string = split_string.map { |word| word.delete('^a-zA-Z0-9') }

    dictionary.reduce({}) do |hash, word|
        hash[word] = final_string.count(word)
        hash.delete_if { |word, count| count == 0 }
        hash
    end
end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)