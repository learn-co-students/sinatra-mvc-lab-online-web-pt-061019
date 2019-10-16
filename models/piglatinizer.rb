class PigLatinizer

    attr_accessor :word

    def piglatinize(word)
        if word.include?(" ")
            split_text(word).join(" ")
        elsif ["a","e","i","o","u"].include?(word[0].downcase)
            word += "way"
        else 
            all_words = word.split(/([aeiou].*)/)
            all_words[1]+all_words[0]+"ay"
        end 
    end 

    def split_text(word)
        array = word.split(" ")
        array.map do |words|
            piglatinize(words)
        end
    end
end