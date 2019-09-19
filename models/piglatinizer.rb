require 'pry'
class PigLatinizer
    attr_reader :phrase

    def initialize(phrase)
        @phrase = phrase.downcase
    end
    
    def piglatinize
        word = phrase.split(" ")
        binding.pry
    end

end