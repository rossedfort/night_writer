require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require './lib/night_read'

class NightWriteTests < Minitest::Test
  def test_it_can_write_braille
    File.open('Users/rossedfort/code/night_writer/message.txt')
    assert_equal "0.0..0.0\n00.00.0.\n0.0.0.0.", NightWrite.new.convert_to_braille('ross')
  end
end
