
class PigLatinizer
    attr_reader :phrase

    def piglatin_phrase(phrase)
        words = phrase.split(" ")
        piglatin = words.map {|word| piglatinize_word(word)}
        piglatin.join(" ")
    end

    def piglatinize(string)
        words = string.split(" ")
        if words.length > 1
            piglatin_phrase(string)
        else
            piglatinize_word(string)
        end
    end


 
    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
            word.slice(3..-1) + word.slice(0, 3) + "ay"
        elsif !vowel?(word[0]) && !vowel?(word[1])
            word.slice(2..-1) + word.slice(0, 2) + "ay"
        else
            word.slice(1..-1) + word.slice(0) + "ay"
            
        end       
    end

    def vowel?(letter)
        letter.match(/[aeiouAEIOU]/)
    end

end