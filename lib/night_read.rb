require_relative 'translator'

class NightRead
  def get_braille
    Translator.new.translate
  end

  def parse_braille
    @text = input
  end

  def input
    file = File.open('Users/rossedfort/code/night_writer/braille.txt')
    array = []
    file.each_line do |line|
      array << line.chomp.split("")
    end
    array
  end

  def format_braille(index = 0)
    @formatted_first, @formatted_second, @formatted_third = [], [], []
    first_line = input[0].each_slice(2) { |a| @formatted_first << a}
    second_line = input[1].each_slice(2) { |a| @formatted_second << a}
    third_line = input[2].each_slice(2) { |a| @formatted_third << a}

    @formatted_first
    @formatted_second
    @formatted_third
  end

  def convert_to_text(braille_line)
    format_brail
    @letters = get_braille
    @text.map {|e| @letters.fetch(e)[braille_line]}.flatten.join
  end

  def output
    file = File.open('Users/rossedfort/code/night_writer/message.txt')
  end
end

read = NightRead.new
read.format_braille
