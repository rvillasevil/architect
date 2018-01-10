require 'test_helper'

class BanosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bano = banos(:one)
  end

  test "should get index" do
    get banos_url
    assert_response :success
  end

  test "should get new" do
    get new_bano_url
    assert_response :success
  end

  test "should create bano" do
    assert_difference('Bano.count') do
      post banos_url, params: { bano: { demo_quitar_azulejo: @bano.demo_quitar_azulejo, nombre: @bano.nombre } }
    end

    assert_redirected_to bano_url(Bano.last)
  end

  test "should show bano" do
    get bano_url(@bano)
    assert_response :success
  end

  test "should get edit" do
    get edit_bano_url(@bano)
    assert_response :success
  end

  test "should update bano" do
    patch bano_url(@bano), params: { bano: { demo_quitar_azulejo: @bano.demo_quitar_azulejo, nombre: @bano.nombre } }
    assert_redirected_to bano_url(@bano)
  end

  test "should destroy bano" do
    assert_difference('Bano.count', -1) do
      delete bano_url(@bano)
    end

    assert_redirected_to banos_url
  end
end
