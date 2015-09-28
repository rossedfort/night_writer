require_relative 'translator'
require 'pry'

class NightWrite

  def get_braille
    Translator.new.translate
  end

  def convert_to_braille(braille_line)
    @text = braille_line.split("")
    @letters = get_braille
    @text.map {|e| @letters.fetch(e)[line]}.flatten.join
    line_zero = convert_to_braille(0)
    line_one = convert_to_braille(1)
    line_two = convert_to_braille(2)
    block = [line_zero, line_one, line_two].join("\n")
  end

end
