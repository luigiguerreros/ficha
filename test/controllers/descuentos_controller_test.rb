require 'test_helper'

class DescuentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descuento = descuentos(:one)
  end

  test "should get index" do
    get descuentos_url
    assert_response :success
  end

  test "should get new" do
    get new_descuento_url
    assert_response :success
  end

  test "should create descuento" do
    assert_difference('Descuento.count') do
      post descuentos_url, params: { descuento: { descripcion: @descuento.descripcion, ps_descuento: @descuento.ps_descuento } }
    end

    assert_redirected_to descuento_url(Descuento.last)
  end

  test "should show descuento" do
    get descuento_url(@descuento)
    assert_response :success
  end

  test "should get edit" do
    get edit_descuento_url(@descuento)
    assert_response :success
  end

  test "should update descuento" do
    patch descuento_url(@descuento), params: { descuento: { descripcion: @descuento.descripcion, ps_descuento: @descuento.ps_descuento } }
    assert_redirected_to descuento_url(@descuento)
  end

  test "should destroy descuento" do
    assert_difference('Descuento.count', -1) do
      delete descuento_url(@descuento)
    end

    assert_redirected_to descuentos_url
  end
end
