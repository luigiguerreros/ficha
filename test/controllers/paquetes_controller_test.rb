require 'test_helper'

class PaquetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paquete = paquetes(:one)
  end

  test "should get index" do
    get paquetes_url
    assert_response :success
  end

  test "should get new" do
    get new_paquete_url
    assert_response :success
  end

  test "should create paquete" do
    assert_difference('Paquete.count') do
      post paquetes_url, params: { paquete: { nombre_paquete: @paquete.nombre_paquete, ps_paquete: @paquete.ps_paquete, renta: @paquete.renta, tipo_paquete: @paquete.tipo_paquete } }
    end

    assert_redirected_to paquete_url(Paquete.last)
  end

  test "should show paquete" do
    get paquete_url(@paquete)
    assert_response :success
  end

  test "should get edit" do
    get edit_paquete_url(@paquete)
    assert_response :success
  end

  test "should update paquete" do
    patch paquete_url(@paquete), params: { paquete: { nombre_paquete: @paquete.nombre_paquete, ps_paquete: @paquete.ps_paquete, renta: @paquete.renta, tipo_paquete: @paquete.tipo_paquete } }
    assert_redirected_to paquete_url(@paquete)
  end

  test "should destroy paquete" do
    assert_difference('Paquete.count', -1) do
      delete paquete_url(@paquete)
    end

    assert_redirected_to paquetes_url
  end
end
