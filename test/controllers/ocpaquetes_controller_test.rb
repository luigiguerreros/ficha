require 'test_helper'

class OcpaquetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ocpaquete = ocpaquetes(:one)
  end

  test "should get index" do
    get ocpaquetes_url
    assert_response :success
  end

  test "should get new" do
    get new_ocpaquete_url
    assert_response :success
  end

  test "should create ocpaquete" do
    assert_difference('Ocpaquete.count') do
      post ocpaquetes_url, params: { ocpaquete: { descripcion: @ocpaquete.descripcion, tipo_ocpaquete: @ocpaquete.tipo_ocpaquete } }
    end

    assert_redirected_to ocpaquete_url(Ocpaquete.last)
  end

  test "should show ocpaquete" do
    get ocpaquete_url(@ocpaquete)
    assert_response :success
  end

  test "should get edit" do
    get edit_ocpaquete_url(@ocpaquete)
    assert_response :success
  end

  test "should update ocpaquete" do
    patch ocpaquete_url(@ocpaquete), params: { ocpaquete: { descripcion: @ocpaquete.descripcion, tipo_ocpaquete: @ocpaquete.tipo_ocpaquete } }
    assert_redirected_to ocpaquete_url(@ocpaquete)
  end

  test "should destroy ocpaquete" do
    assert_difference('Ocpaquete.count', -1) do
      delete ocpaquete_url(@ocpaquete)
    end

    assert_redirected_to ocpaquetes_url
  end
end
