class PigLatinizer
    attr_accessor :sentence
   
    def piglatinize(sentence)
        words = sentence.split(" ")
        words_piglatinize = words.map {|word| piglatinize_word(word)}
        words_piglatinize.join(" ")
        
    end

    def consonant?(character)
        !character.match(/[aeiouAEIOU]/)
    end

    def piglatinize_word(word)
        # binding.pry
        if !consonant?(word[0])
            word += "way"

        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3) + "ay"

        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2) + "ay"

        else 
            word = word.slice(1..-1) + word.slice(0) + "ay"
        end
    end
end
