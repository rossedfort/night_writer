def input(input_file = ARGV[0])
  file = File.open('Users/rossedfort/code/night_writer/braille.txt')
  braille = file.each_line do |line|
    @new_array = []
    @new_array << line.chomp.split("")
    @new_array
  end
end

.each_slice(2) {|i| @new_array << i }
