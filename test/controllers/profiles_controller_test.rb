require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { about: @profile.about, address: @profile.address, android_app: @profile.android_app, email: @profile.email, friday_hours: @profile.friday_hours, iphone_app: @profile.iphone_app, monday_hours: @profile.monday_hours, phone_number: @profile.phone_number, restaurant_name: @profile.restaurant_name, saturday_hours: @profile.saturday_hours, short_intro: @profile.short_intro, sunday_hours: @profile.sunday_hours, thursday_hours: @profile.thursday_hours, tuesday_hours: @profile.tuesday_hours, wednesday_hours: @profile.wednesday_hours }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { about: @profile.about, address: @profile.address, android_app: @profile.android_app, email: @profile.email, friday_hours: @profile.friday_hours, iphone_app: @profile.iphone_app, monday_hours: @profile.monday_hours, phone_number: @profile.phone_number, restaurant_name: @profile.restaurant_name, saturday_hours: @profile.saturday_hours, short_intro: @profile.short_intro, sunday_hours: @profile.sunday_hours, thursday_hours: @profile.thursday_hours, tuesday_hours: @profile.tuesday_hours, wednesday_hours: @profile.wednesday_hours }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
