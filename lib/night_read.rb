require_relative 'translator'

class NightRead
  def get_braille
    Translator.new.translate
  end

  def parse_braille
    @text = input
  end

  def format_braille(index = 0)
    @formatted_first, @formatted_second, @formatted_third = [], [], []
    input[0].each_slice(2) { |a| @formatted_first << a}
    input[1].each_slice(2) { |a| @formatted_second << a}
    input[2].each_slice(2) { |a| @formatted_third << a}

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
end

if $PROGRAM_NAME == __FILE__
  public
  def input(input_file = ARGV[0])
    file = File.open(input_file)
    array = []
    file.each_line do |line|
      array << line.chomp.split('')
    end
    array
  end

  def output(output_file = ARGV[1])
    file = File.open(output_file, 'w')
    file.write("#{convert_to_text}")
    puts "Created 'braille.txt' containing #{} characters"
  end
end

read = NightRead.new
read.output
