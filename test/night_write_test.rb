require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

class NightWriteTests < Minitest::Test
  #it can convert braille to plain text
  #it can convert plain text to braille
  def test_it_can_write_the_first_line
    night = NightWrite.new
    assert_equal "0.", night.write_first_line
  end

  def test_it_can_write_the_second_line
    night = NightWrite.new
    assert_equal "..", night.write_second_line
  end

  def test_it_can_write_the_third_line
    night = NightWrite.new
    assert_equal "..", night.write_third_line
  end
end
