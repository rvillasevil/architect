require 'test_helper'

class ConfirmacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confirmacion = confirmacions(:one)
  end

  test "should get index" do
    get confirmacions_url
    assert_response :success
  end

  test "should get new" do
    get new_confirmacion_url
    assert_response :success
  end

  test "should create confirmacion" do
    assert_difference('Confirmacion.count') do
      post confirmacions_url, params: { confirmacion: { empresa: @confirmacion.empresa, reform_id: @confirmacion.reform_id, user_id: @confirmacion.user_id, usuario: @confirmacion.usuario } }
    end

    assert_redirected_to confirmacion_url(Confirmacion.last)
  end

  test "should show confirmacion" do
    get confirmacion_url(@confirmacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_confirmacion_url(@confirmacion)
    assert_response :success
  end

  test "should update confirmacion" do
    patch confirmacion_url(@confirmacion), params: { confirmacion: { empresa: @confirmacion.empresa, reform_id: @confirmacion.reform_id, user_id: @confirmacion.user_id, usuario: @confirmacion.usuario } }
    assert_redirected_to confirmacion_url(@confirmacion)
  end

  test "should destroy confirmacion" do
    assert_difference('Confirmacion.count', -1) do
      delete confirmacion_url(@confirmacion)
    end

    assert_redirected_to confirmacions_url
  end
end
