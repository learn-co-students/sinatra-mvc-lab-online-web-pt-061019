require 'pry'

class PigLatinizer
    
    attr_accessor :word

    def piglatinize(word)

        vowels = ["a", "e", "i", "o", "u"]

        if word.include?(" ")
            split_text(word).join(" ")
        elsif vowels.include?(word[0].downcase)
            word + "way"
        else 
            words = word.split(/[aeiou].*/)
            words[1]+words[0]+"ay"
        end 
    end

    def split_text(word)
        word_array = word.split(" ")

        word_array.map do |word|
            piglatinize(word)
        end 
    end 
end 