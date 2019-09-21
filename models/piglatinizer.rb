class PigLatinizer 
    
    def piglatinize(string) 
        first = string.split(" ")
        second = first.map {|word| change_word(word)}
        second.join(" ")
    end 

    def change_word(word)
        first_character = word[0].downcase 
        if ["a", "e", "i", "o", "u"].include?(first_character)
            "#{word}way"
        else 
            consonants = []
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false 
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false 
                    consonants << word[2]
                end 
            end 
        (word[consonants.length..-1] + consonants.join + "ay")
        end
    end 

end 