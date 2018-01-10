require 'test_helper'

class ReformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reform = reforms(:one)
  end

  test "should get index" do
    get reforms_url
    assert_response :success
  end

  test "should get new" do
    get new_reform_url
    assert_response :success
  end

  test "should create reform" do
    assert_difference('Reform.count') do
      post reforms_url, params: { reform: { localidad: @reform.localidad, user_id: @reform.user_id } }
    end

    assert_redirected_to reform_url(Reform.last)
  end

  test "should show reform" do
    get reform_url(@reform)
    assert_response :success
  end

  test "should get edit" do
    get edit_reform_url(@reform)
    assert_response :success
  end

  test "should update reform" do
    patch reform_url(@reform), params: { reform: { localidad: @reform.localidad, user_id: @reform.user_id } }
    assert_redirected_to reform_url(@reform)
  end

  test "should destroy reform" do
    assert_difference('Reform.count', -1) do
      delete reform_url(@reform)
    end

    assert_redirected_to reforms_url
  end
end
