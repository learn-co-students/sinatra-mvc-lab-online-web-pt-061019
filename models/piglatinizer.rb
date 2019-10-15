class PigLatinizer

        # if word == 'I'
        #     word + 'way'
        # elsif 
        #     s = word.split('')
        #     s.shift 
        #     s.join + word[0] + 'ay'
        # end 
        
        attr_accessor :word 

        def piglatinize(word)
            if word.include?(" ")
                split_word(word).join(" ")
            elsif ["a","e","i","o","u"].include?(word[0].downcase)
                word + "way"
            else
                words = word.split(/([aeiou].*)/)
                words[1]+words[0]+"ay"
            end
        end
    
        def split_word(word)
            array = word.split(" ")
            array.map do |word|
                piglatinize(word)
            end
        end
    end