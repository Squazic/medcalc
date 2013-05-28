require 'test_helper'

class FraminghamProfilesHelperTest < ActionView::TestCase
  test "female calculation" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => false, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("1.1%", calculate_risk(framingham_profile))
  end

  test "male calculation" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => true, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("1.8%", calculate_risk(framingham_profile))
  end

  test "female with treatment" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => false, :sbp => 125, :smoker => false, :treatment => true)
    assert_equal("1.5%", calculate_risk(framingham_profile))
  end

  test "male with treatment" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => true, :sbp => 125, :smoker => false, :treatment => true)
    assert_equal("2.5%", calculate_risk(framingham_profile))
  end

  test "female smoker" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => false, :sbp => 125, :smoker => true, :treatment => false)
    assert_equal("2.0%", calculate_risk(framingham_profile))
  end

  test "male smoker" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => true, :sbp => 125, :smoker => true, :treatment => false)
    assert_equal("3.6%", calculate_risk(framingham_profile))
  end

  test "female diabetes" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => true, :male => false, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("2.3%", calculate_risk(framingham_profile))
  end

  test "male diabetes" do
    malediabetes = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => true, :male => true, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("3.0%", calculate_risk(malediabetes))
  end

  test "female age" do
    framingham_profile = FraminghamProfile.new(:age => 50, :bmi => 22.5, :diabetes => false, :male => false, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("4.3%", calculate_risk(framingham_profile))
  end

  test "male age" do
    framingham_profile = FraminghamProfile.new(:age => 50, :bmi => 22.5, :diabetes => false, :male => true, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("8.4%", calculate_risk(framingham_profile))
  end

  test "female sbp" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => false, :sbp => 150, :smoker => false, :treatment => false)
    assert_equal("1.8%", calculate_risk(framingham_profile))
  end

  test "male sbp" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 22.5, :diabetes => false, :male => true, :sbp => 150, :smoker => false, :treatment => false)
    assert_equal("2.5%", calculate_risk(framingham_profile))
  end

  test "female bmi" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 30.5, :diabetes => false, :male => false, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("1.3%", calculate_risk(framingham_profile))
  end

  test "male bmi" do
    framingham_profile = FraminghamProfile.new(:age => 30, :bmi => 30.5, :diabetes => false, :male => true, :sbp => 125, :smoker => false, :treatment => false)
    assert_equal("2.3%", calculate_risk(framingham_profile))
  end

end
