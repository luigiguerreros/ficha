require 'test_helper'

class AntenapuntosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @antenapunto = antenapuntos(:one)
  end

  test "should get index" do
    get antenapuntos_url
    assert_response :success
  end

  test "should get new" do
    get new_antenapunto_url
    assert_response :success
  end

  test "should create antenapunto" do
    assert_difference('Antenapunto.count') do
      post antenapuntos_url, params: { antenapunto: { nombre: @antenapunto.nombre, oc: @antenapunto.oc, ps: @antenapunto.ps, tipo: @antenapunto.tipo } }
    end

    assert_redirected_to antenapunto_url(Antenapunto.last)
  end

  test "should show antenapunto" do
    get antenapunto_url(@antenapunto)
    assert_response :success
  end

  test "should get edit" do
    get edit_antenapunto_url(@antenapunto)
    assert_response :success
  end

  test "should update antenapunto" do
    patch antenapunto_url(@antenapunto), params: { antenapunto: { nombre: @antenapunto.nombre, oc: @antenapunto.oc, ps: @antenapunto.ps, tipo: @antenapunto.tipo } }
    assert_redirected_to antenapunto_url(@antenapunto)
  end

  test "should destroy antenapunto" do
    assert_difference('Antenapunto.count', -1) do
      delete antenapunto_url(@antenapunto)
    end

    assert_redirected_to antenapuntos_url
  end
end
