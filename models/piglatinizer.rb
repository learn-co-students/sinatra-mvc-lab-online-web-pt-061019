class PigLatinizer
    attr_accessor :text

    def piglatinize(text)
        if text.include?(" ")
            split_text(text).join(" ")
        elsif ["a","e","i","o","u"].include?(text[0].downcase)
            text + "way"
        else
            words = text.split(/([aeiou].*)/)
            words[1]+words[0]+"ay"
        end
    end

    def split_text(text)
        array = text.split(" ")
        array.map do |word|
            piglatinize(word)
        end
    end
end