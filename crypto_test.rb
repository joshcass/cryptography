gem 'minitest'
require 'minitest/autorun'
require_relative 'crypto'
class EncryptionEngineTest < Minitest::Test

  def test_that_A_gives_us_N
    engine = EncryptionEngine.new
    output = engine.encrypt("a")
    assert_equal "n", output
  end

  def test_it_encrypts_using_rot13
    skip
    engine = EncryptionEngine.new
    output = engine.encrypt("My Message")
    assert_equal "Zl Zrffntr", output
  end
end
