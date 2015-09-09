# "hello".each_char {|c| print c, ' ' }

both = ['0', '0']
neither = ['.', '.']
left = ['0', '.']
right = ['.', '0']

# both_index = 0     # => 0
# neither_index = 0  # => 0
# right_index = 0    # => 0
# left_index = 0     # => 0
#
# while both_index <= both.length      # => true, true, true, false
#   @both_indices = both[both_index]  # => "0", "0", nil
#   both_index += 1                    # => 1, 2, 3
#   @both_indices                      # => "0", "0", nil
# end                                  # => nil
#
# while neither_index <= neither.length        # => true, true, true, false
#   @neither_indices = neither[neither_index]  # => ".", ".", nil
#   neither_index += 1                         # => 1, 2, 3
# end                                          # => nil
#
# while left_index <= left.length     # => true, true, true, false
#   @left_indices = left[left_index]  # => "0", ".", nil
#   left_index += 1                   # => 1, 2, 3
# end                                 # => nil
#
# while right_index <= right.length      # => true, true, true, false
#   @right_indices = right[right_index]  # => ".", "0", nil
#   right_index += 1                     # => 1, 2, 3
# end                                    # => nil


puts = "#{left}\n #{neither}\n #{neither}"

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
