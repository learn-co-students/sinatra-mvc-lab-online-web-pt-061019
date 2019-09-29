class PigLatinizer

    attr_reader :text

    # def initialize(text)
    #     @text = text.downcase
    # end

    def piglatinize(phrase)
        words = []

        phrase.split(" ").each do |word|
            words << piglatinize_word(word)
        end
        words.join(" ")
    end

    def piglatinize_word(word)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        index_of_first_vowel = 0

        if word.length == 1
            return word + "way"          
        end

        if vowels.include?(word[0])
            return word + "way"
        end

        word.split("").each_with_index do |char, index|
            if vowels.include?(char)
                index_of_first_vowel = index
                break
            end
        end

        result = word[index_of_first_vowel..-1]
        result += word[0..index_of_first_vowel -1] 
        result += "ay"    
        result    

        # vowels.select
    end



    


end
