require 'pry'
class PigLatinizer
    attr_reader :phrase

    def piglatinize
        word = phrase.split(" ")
        binding.pry
    end

end