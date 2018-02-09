
require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def test_lang_is_english
    testing_class = Multilinguist.new()
    testing_class.language_in("canada")
    test = testing_class.say_in_local_language('hello')
    assert_equal('hello', test)
  end

  def test_lang_is_french
    testing_class = Multilinguist.new()
    testing_class.language_in("france")
    test = testing_class.say_in_local_language('hello')

    assert_equal('salut', test)
  end

  def test_lang_is_german
    testing_class = Multilinguist.new()

    testing_class.language_in("germany")
    test = testing_class.say_in_local_language('hello')

    assert_equal('hallo', test)
  end


end
