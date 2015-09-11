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

    @transposed = []
    @transposed << @formatted_first
    @transposed << @formatted_second
    @transposed << @formatted_third
    @transposed.transpose
  end

  def convert_to_text
    @letters = get_braille
    array = format_braille
    index = 0
    @final_string = []
    while index <= array.count
      @final_string << @letters.key(array[index])
      index += 1
    end
    @final_string.compact.join('')
  end

  def output
    file = File.open('Users/rossedfort/code/night_writer/output_message.txt', 'w')
    file.write("#{convert_to_text}")
  end
end

read = NightRead.new
read.output
