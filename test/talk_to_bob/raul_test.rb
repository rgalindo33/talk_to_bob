require 'test_helper'

class TalkToBob::RaulTest < Minitest::Test
  def bob
    TalkToBob::Raul::Bob.new
  end

  def test_stating_something
    remark = "yo dude, whats up"
    assert_equal 'Whatever.', bob.hey(remark)
  end

  def test_shouting
    remark = 'WATCHOUT!!!'
    assert_equal 'Whoa, chill out!', bob.hey(remark)
  end

  def test_asking_a_question
    remark = 'do i look fat?'
    assert_equal 'Sure.', bob.hey(remark)
  end

  def test_silence
    remark = '  '
    assert_equal 'Fine. Be that way!', bob.hey(remark)
  end
end
