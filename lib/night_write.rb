class NightWrite
  def translate
    @letters =  {"a"=>[['0', '.'].join,['.', '.'].join,['.', '.'].join],
                "b"=>[['0', '.'].join,['0', '.'].join,['.', '.'].join],
                "c"=>[['0', '0'].join,['.', '.'].join,['.', '.'].join],
                "d"=>[['0', '0'].join,['.', '0'].join,['.', '.'].join],
                "e"=>[['0', '.'].join,['.', '0'].join,['.', '.'].join],
                "f"=>[['0', '0'].join,['0', '.'].join,['.', '.'].join],
                "g"=>[['0', '0'].join,['0', '0'].join,['.', '.'].join],
                "h"=>[['0', '.'].join,['0', '0'].join,['.', '.'].join],
                "i"=>[['.', '0'].join,['0', '.'].join,['.', '.'].join],
                "j"=>[['.', '0'].join,['0', '0'].join,['.', '.'].join],

                "k"=>[['0', '.'].join,['.', '.'].join,['0', '.'].join],
                "l"=>[['0', '.'].join,['0', '.'].join,['0', '.'].join],
                "m"=>[['0', '0'].join,['.', '.'].join,['0', '.'].join],
                "n"=>[['0', '0'].join,['.', '0'].join,['0', '.'].join],
                "o"=>[['0', '.'].join,['.', '0'].join,['0', '.'].join],
                "p"=>[['0', '0'].join,['0', '.'].join,['0', '.'].join],
                "q"=>[['0', '0'].join,['0', '0'].join,['0', '.'].join],
                "r"=>[['0', '.'].join,['0', '0'].join,['0', '.'].join],
                "s"=>[['.', '0'].join,['0', '.'].join,['0', '.'].join],
                "t"=>[['.', '0'].join,['0', '0'].join,['0', '.'].join],

                "u"=>[['0', '.'].join,['.', '.'].join,['0', '0'].join],
                "v"=>[['0', '.'].join,['0', '.'].join,['0', '0'].join],
                "w"=>[['.', '0'].join,['0', '0'].join,['.', '0'].join],
                "x"=>[['0', '0'].join,['.', '.'].join,['0', '0'].join],
                "y"=>[['0', '0'].join,['.', '0'].join,['0', '0'].join],
                "z"=>[['0', '.'].join,['.', '0'].join,['0', '0'].join]}
  end

  def write_first_line(index = 0)
    translate
    @letters.values_at("a")[0][index]
  end

  def write_second_line(index = 1)
    translate
    @letters.values_at("a")[0][index]
  end

  def write_third_line(index = 2)
    translate
    @letters.values_at("a")[0][index]
  end

  actually_running = ($PROGRAM_NAME == __FILE__)

  if actually_running
    def input(input_file = ARGV[0])
      text = ''
      input_file = File.open(input_file)
      input_file.each do |line|
        @message = text += line
      end
      return @message
    end

    def output(output_file = ARGV[1])
      braille = File.open(output_file, 'w+')
      braille.write("#{write_first_line}\n#{write_second_line}\n#{write_third_line}")
      print "Created 'braille.txt' containing #{braille.each_line.count} characters"
      braille.close
    end
    write = NightWrite.new
    write.output
  end
end
