require 'test_helper'

class ModopagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modopago = modopagos(:one)
  end

  test "should get index" do
    get modopagos_url
    assert_response :success
  end

  test "should get new" do
    get new_modopago_url
    assert_response :success
  end

  test "should create modopago" do
    assert_difference('Modopago.count') do
      post modopagos_url, params: { modopago: { descripcion: @modopago.descripcion, modo_pago: @modopago.modo_pago } }
    end

    assert_redirected_to modopago_url(Modopago.last)
  end

  test "should show modopago" do
    get modopago_url(@modopago)
    assert_response :success
  end

  test "should get edit" do
    get edit_modopago_url(@modopago)
    assert_response :success
  end

  test "should update modopago" do
    patch modopago_url(@modopago), params: { modopago: { descripcion: @modopago.descripcion, modo_pago: @modopago.modo_pago } }
    assert_redirected_to modopago_url(@modopago)
  end

  test "should destroy modopago" do
    assert_difference('Modopago.count', -1) do
      delete modopago_url(@modopago)
    end

    assert_redirected_to modopagos_url
  end
end
