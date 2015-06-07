require 'minitest/autorun'
require 'condate'
MiniTest.autorun

class TestCondate < MiniTest::Test
  def setup
    $stdout, @orig_stdout = 
      open("/dev/null", 'w'), $stdout
    @condate = Condate.new('test')
  end

  def teardown
    $stdout = @orig_stdout
  end

  def test_decide
    assert_equal @condate.decide, 'foo'
  end

end
