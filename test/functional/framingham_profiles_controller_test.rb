require 'test_helper'

class FraminghamProfilesControllerTest < ActionController::TestCase
  setup do
    @framingham_profile = framingham_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:framingham_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create framingham_profile" do
    assert_difference('FraminghamProfile.count') do
      post :create, framingham_profile: { age: @framingham_profile.age, bmi: @framingham_profile.bmi, diabetes: @framingham_profile.diabetes, male: @framingham_profile.male, sbp: @framingham_profile.sbp, smoker: @framingham_profile.smoker, treatment: @framingham_profile.treatment }
    end

    assert_redirected_to framingham_profile_path(assigns(:framingham_profile))
  end

  test "should show framingham_profile" do
    get :show, id: @framingham_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @framingham_profile
    assert_response :success
  end

  test "should update framingham_profile" do
    put :update, id: @framingham_profile, framingham_profile: { age: @framingham_profile.age, bmi: @framingham_profile.bmi, diabetes: @framingham_profile.diabetes, male: @framingham_profile.male, sbp: @framingham_profile.sbp, smoker: @framingham_profile.smoker, treatment: @framingham_profile.treatment }
    assert_redirected_to framingham_profile_path(assigns(:framingham_profile))
  end

  test "should destroy framingham_profile" do
    assert_difference('FraminghamProfile.count', -1) do
      delete :destroy, id: @framingham_profile
    end

    assert_redirected_to framingham_profiles_path
  end
end
