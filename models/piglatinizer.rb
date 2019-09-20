class PigLatinizer

    attr_reader :text

    def initialize
    end 

    def piglatinize(text)
        word_array = text.split(' ')
        results = word_array.collect do |w|
            if w[0].match(/A|E|I|O|U|Y|a|e|i|o|u|y/)
                final = w << "way"
            else 
                separated = w.split(/([AEIOUYaeiouy].*)/)
                first = separated[0] 
                last = separated[1]
                final = last << first << "ay"
                final
            end 
        end 
        results.join(" ")
    end 
                


end 