require 'test_helper'

class FraminghamProfileTest < ActiveSupport::TestCase
  test "should not save profile without age" do
    fp = FraminghamProfile.new
    fp.sbp = 100
    fp.bmi = 30
    assert !fp.save
  end
  test "should not save profile without sbp" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.bmi = 23
    assert !fp.save
  end
  test "should not save profile without bmi" do
    fp = FraminghamProfile.new
    fp.sbp = 100
    fp.age = 30
    assert !fp.save
  end
end
