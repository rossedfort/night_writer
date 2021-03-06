require_relative 'translator'
require 'pry'

class NightWrite

  def get_braille
    Translator.new.translate
  end

  def parse_message
    @text = input.split("")
  end

  def convert_to_braille(braille_line)
    parse_message
    @letters = get_braille
    @text.map {|e| @letters.fetch(e)[braille_line]}.flatten.join
  end

  if $PROGRAM_NAME == __FILE__
    public
    def input(input_file = ARGV[0])
      text = ''
      file = File.open(input_file)
      file.each do |line|
        @message = text += line
      end
      return @message.strip
    end

    def output(output_file = ARGV[1])
      file = File.open(output_file, 'w+')
      line_zero = convert_to_braille(0)
      line_one = convert_to_braille(1)
      line_two = convert_to_braille(2)
      block = [line_zero, line_one, line_two].join("\n")
      file.write("#{line_zero}\n#{line_one}\n#{line_two}")
      puts "Created 'braille.txt' containing #{} characters"
    end
  end
end

write = NightWrite.new
write.output
