require 'test_helper'

class CaracteristicamodemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracteristicamodem = caracteristicamodems(:one)
  end

  test "should get index" do
    get caracteristicamodems_url
    assert_response :success
  end

  test "should get new" do
    get new_caracteristicamodem_url
    assert_response :success
  end

  test "should create caracteristicamodem" do
    assert_difference('Caracteristicamodem.count') do
      post caracteristicamodems_url, params: { caracteristicamodem: { costo: @caracteristicamodem.costo, pack: @caracteristicamodem.pack, tipo_pago: @caracteristicamodem.tipo_pago } }
    end

    assert_redirected_to caracteristicamodem_url(Caracteristicamodem.last)
  end

  test "should show caracteristicamodem" do
    get caracteristicamodem_url(@caracteristicamodem)
    assert_response :success
  end

  test "should get edit" do
    get edit_caracteristicamodem_url(@caracteristicamodem)
    assert_response :success
  end

  test "should update caracteristicamodem" do
    patch caracteristicamodem_url(@caracteristicamodem), params: { caracteristicamodem: { costo: @caracteristicamodem.costo, pack: @caracteristicamodem.pack, tipo_pago: @caracteristicamodem.tipo_pago } }
    assert_redirected_to caracteristicamodem_url(@caracteristicamodem)
  end

  test "should destroy caracteristicamodem" do
    assert_difference('Caracteristicamodem.count', -1) do
      delete caracteristicamodem_url(@caracteristicamodem)
    end

    assert_redirected_to caracteristicamodems_url
  end
end
