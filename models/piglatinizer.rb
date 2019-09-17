require 'pry'
class PigLatinizer
    attr_reader :words

    def initialize(words)
        @words = words.downcase
    end

    def piglatinize 
        word = words.split(" ")
        result = word.map do |w|
            binding.pry
            first = w.split /([aeiouAEIOU].*)/
            first
        end
        result
    end

end