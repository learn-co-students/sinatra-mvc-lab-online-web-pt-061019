class PigLatinizer
    attr_reader :words

    def initialize(words)
        @words = words.downcase
    end

    def piglatinize 
        word = words.split(" ")
        result = word.map do |w|
            first = w[0]
            rest = w[1..-1]
            rest << first << "ay"
        end
        result
    end

end