require 'pry'

class NightWrite
  def input(file = ARGV[0])
    text = ''
    input_file = File.open(file)
    input_file.each do |line|
      @message = text += line
    end
    return @message
  end

  def output(file = ARGV[1])
    both = ['0', '0'].join
    none = ['.', '.'].join
    left = ['0', '.'].join
    right = ['.', '0'].join

    braille = File.open(file, 'w+')
    braille.write("#{left} #{left} #{right} #{right}\n#{both} #{right} #{left} #{left}\n#{left} #{left} #{left} #{left}")
    braille
  end

  def translate
    input
    output
    puts "Created 'braille.txt' containing #{output} characters"
  end
end

write = NightWrite.new
write.translate

# ross = "#{left}#{left}#{right}#{right}\n#{both}#{right}#{left}#{left}\n#{left}#{left}#{left}#{left}"

a = "#{left}\n#{none}\n#{none}"
b = "#{left}\n#{left}\n#{none}"
c = "#{both}\n#{none}\n#{none}"
d = "#{both}\n#{right}\n#{none}"
e = "#{left}\n#{right}\n#{none}"
f = "#{both}\n#{left}\n#{none}"
g = "#{both}\n#{both}\n#{none}"
h = "#{left}\n#{both}\n#{none}"
i = "#{right}\n#{left}\n#{none}"
j = "#{right}\n#{both}\n#{none}"

k = "#{left}\n#{none}\n#{left}"
l = "#{left}\n#{left}\n#{left}"
m = "#{both}\n#{none}\n#{left}"
n = "#{both}\n#{right}\n#{left}"
o = "#{left}\n#{right}\n#{left}"
pee = "#{both}\n#{left}\n#{left}"
q = "#{both}\n#{both}\n#{left}"
r = "#{left}\n#{both}\n#{left}"
s = "#{right}\n#{left}\n#{left}"
t = "#{right}\n#{both}\n#{left}"

u = "#{left}\n#{none}\n#{both}"
v = "#{left}\n#{left}\n#{both}"
w = "#{right}\n#{both}\n#{right}"
x = "#{both}\n#{none}\n#{both}"
y = "#{both}\n#{right}\n#{both}"
z = "#{left}\n#{right}\n#{both}"
