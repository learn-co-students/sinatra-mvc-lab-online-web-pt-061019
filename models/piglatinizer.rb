class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def convert_to_pig_latin
    characters = text.split("")

    first_letter = characters.split("").first

    if first_letter == [aeiou]
      remove first better
      add "way" to the end
    elsif condition
      # remove first first_letter
      # add it to the end
      # then add "ay"
    end


    # words each do |word|
    #   word[0].pop
    # end
  end
end
