require 'test_helper'

class CocinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cocina = cocinas(:one)
  end

  test "should get index" do
    get cocinas_url
    assert_response :success
  end

  test "should get new" do
    get new_cocina_url
    assert_response :success
  end

  test "should create cocina" do
    assert_difference('Cocina.count') do
      post cocinas_url, params: { cocina: { demo_quitar_azulejo: @cocina.demo_quitar_azulejo, nombre: @cocina.nombre } }
    end

    assert_redirected_to cocina_url(Cocina.last)
  end

  test "should show cocina" do
    get cocina_url(@cocina)
    assert_response :success
  end

  test "should get edit" do
    get edit_cocina_url(@cocina)
    assert_response :success
  end

  test "should update cocina" do
    patch cocina_url(@cocina), params: { cocina: { demo_quitar_azulejo: @cocina.demo_quitar_azulejo, nombre: @cocina.nombre } }
    assert_redirected_to cocina_url(@cocina)
  end

  test "should destroy cocina" do
    assert_difference('Cocina.count', -1) do
      delete cocina_url(@cocina)
    end

    assert_redirected_to cocinas_url
  end
end
