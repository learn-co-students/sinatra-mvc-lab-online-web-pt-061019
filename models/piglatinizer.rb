require 'pry'
require 'pry'
class PigLatinizer
    attr_reader :phrase

    def piglatin_phrase(phrase)
        words = phrase.split(" ")
        piglatin = words.map {|word| piglatinize(word)}
        piglatin.join(" ")
    end

    def piglatinize(word)
        if vowel?(word[0])
            word + "way"
        elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
            word.slice(3, -1) + word.slice(0, 2) + "ay"
        elsif !vowel?(word[0]) && !vowel?(word[1])
            word.slice(2, -1) + word.slice(0, 1) + "ay"
        else !vowel?(word[0])
            word.slice(1, -1) + word.slice(0) + "ay"
        end       
    end

    def vowel?(letter)
        letter.match(/[aeiouAEIOU]/)
    end

end