class PigLatinizer
    attr_reader :words

    # def initialize(words)
    #     @words = words
    # end

    def piglatinize(words)
        word = words.split(" ")
        result = word.map do |w|
            if w[0].match(/a|e|i|o|u|y|A|E|I|O|U|Y/)
                final = w << "way"
            else 
                sep = w.split(/([aeiouyAEIOUY].*)/)
                first = sep[0]
                last = sep[1]
                final = last << first << "ay"
                final
            end
        end
        result.join(" ")
    end

end