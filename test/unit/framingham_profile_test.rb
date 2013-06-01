require 'test_helper'

class FraminghamProfileTest < ActiveSupport::TestCase
  test "should not save profile without age" do
    fp = FraminghamProfile.new
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without diabetes" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without gender" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without smoker" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without treatment" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without sbp" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.height = 150
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without height" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.weight = 70
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without height units" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.weight = 70
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without weight" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.height_units = "cm"
    fp.weight_units = "kg"
    assert !fp.save
  end
  test "should not save profile without weight units" do
    fp = FraminghamProfile.new
    fp.age = 30
    fp.diabetes = true
    fp.male = true
    fp.smoker = true
    fp.treatment = true
    fp.sbp = 100
    fp.height = 150
    fp.height_units = "cm"
    fp.weight = 70
    assert !fp.save
  end
end
