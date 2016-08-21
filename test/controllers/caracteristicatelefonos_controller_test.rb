require 'test_helper'

class CaracteristicatelefonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracteristicatelefono = caracteristicatelefonos(:one)
  end

  test "should get index" do
    get caracteristicatelefonos_url
    assert_response :success
  end

  test "should get new" do
    get new_caracteristicatelefono_url
    assert_response :success
  end

  test "should create caracteristicatelefono" do
    assert_difference('Caracteristicatelefono.count') do
      post caracteristicatelefonos_url, params: { caracteristicatelefono: { costo: @caracteristicatelefono.costo, pack: @caracteristicatelefono.pack, tipo_pago: @caracteristicatelefono.tipo_pago } }
    end

    assert_redirected_to caracteristicatelefono_url(Caracteristicatelefono.last)
  end

  test "should show caracteristicatelefono" do
    get caracteristicatelefono_url(@caracteristicatelefono)
    assert_response :success
  end

  test "should get edit" do
    get edit_caracteristicatelefono_url(@caracteristicatelefono)
    assert_response :success
  end

  test "should update caracteristicatelefono" do
    patch caracteristicatelefono_url(@caracteristicatelefono), params: { caracteristicatelefono: { costo: @caracteristicatelefono.costo, pack: @caracteristicatelefono.pack, tipo_pago: @caracteristicatelefono.tipo_pago } }
    assert_redirected_to caracteristicatelefono_url(@caracteristicatelefono)
  end

  test "should destroy caracteristicatelefono" do
    assert_difference('Caracteristicatelefono.count', -1) do
      delete caracteristicatelefono_url(@caracteristicatelefono)
    end

    assert_redirected_to caracteristicatelefonos_url
  end
end
