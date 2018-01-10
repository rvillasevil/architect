require 'test_helper'

class HabitacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habitacion = habitacions(:one)
  end

  test "should get index" do
    get habitacions_url
    assert_response :success
  end

  test "should get new" do
    get new_habitacion_url
    assert_response :success
  end

  test "should create habitacion" do
    assert_difference('Habitacion.count') do
      post habitacions_url, params: { habitacion: { demo_quitar_azulejo: @habitacion.demo_quitar_azulejo, nombre: @habitacion.nombre } }
    end

    assert_redirected_to habitacion_url(Habitacion.last)
  end

  test "should show habitacion" do
    get habitacion_url(@habitacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_habitacion_url(@habitacion)
    assert_response :success
  end

  test "should update habitacion" do
    patch habitacion_url(@habitacion), params: { habitacion: { demo_quitar_azulejo: @habitacion.demo_quitar_azulejo, nombre: @habitacion.nombre } }
    assert_redirected_to habitacion_url(@habitacion)
  end

  test "should destroy habitacion" do
    assert_difference('Habitacion.count', -1) do
      delete habitacion_url(@habitacion)
    end

    assert_redirected_to habitacions_url
  end
end
