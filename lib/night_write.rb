require_relative 'translator'

class NightWrite

  def get_braille
    Translator.new.translate
  end

  def parse_message
    @text = input.split.join.chars
  end

  def open_file
    braille = File.open('Users/rossedfort/code/night_writer/braille.txt', 'w+')
  end

  def write_top_line(index = 0)
    parse_message
    top_braille = []
    @letters = get_braille
    until index == @text.size
      top_braille << @letters[@text[index]][0].join
      index+=1
    end
    top_braille.join
  end

  def write_mid_line(index = 0)
    parse_message
    mid_braille = []
    @letters = get_braille
    until index == @text.size
      mid_braille << @letters[@text[index]][1].join
      index+=1
    end
    mid_braille.join
  end

  def write_bot_line(index = 0)
    parse_message
    bot_braille = []
    @letters = get_braille
    until index == @text.size
      bot_braille << @letters[@text[index]][2].join
      index+=1
    end
    bot_braille.join
  end

  def write_lines
    braille = open_file
    braille.write("#{write_top_line}\n#{write_mid_line}\n#{write_bot_line}")
  end

  actually_running = ($PROGRAM_NAME == __FILE__)

  if actually_running
    def input(input_file = ARGV[0])
      text = ''
      file = File.open('Users/rossedfort/code/night_writer/message.txt')
      file.each do |line|
        @message = text += line
      end
      return @message.strip
    end

    def output(output_file = ARGV[1])
      print "Created 'braille.txt' containing #{} characters"
    end
  end
end

write = NightWrite.new.write_lines
