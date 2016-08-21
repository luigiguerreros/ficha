require 'test_helper'

class Caracteristicadeco1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracteristicadeco1 = caracteristicadeco1s(:one)
  end

  test "should get index" do
    get caracteristicadeco1s_url
    assert_response :success
  end

  test "should get new" do
    get new_caracteristicadeco1_url
    assert_response :success
  end

  test "should create caracteristicadeco1" do
    assert_difference('Caracteristicadeco1.count') do
      post caracteristicadeco1s_url, params: { caracteristicadeco1: { costo: @caracteristicadeco1.costo, pack: @caracteristicadeco1.pack, tipo_pago: @caracteristicadeco1.tipo_pago } }
    end

    assert_redirected_to caracteristicadeco1_url(Caracteristicadeco1.last)
  end

  test "should show caracteristicadeco1" do
    get caracteristicadeco1_url(@caracteristicadeco1)
    assert_response :success
  end

  test "should get edit" do
    get edit_caracteristicadeco1_url(@caracteristicadeco1)
    assert_response :success
  end

  test "should update caracteristicadeco1" do
    patch caracteristicadeco1_url(@caracteristicadeco1), params: { caracteristicadeco1: { costo: @caracteristicadeco1.costo, pack: @caracteristicadeco1.pack, tipo_pago: @caracteristicadeco1.tipo_pago } }
    assert_redirected_to caracteristicadeco1_url(@caracteristicadeco1)
  end

  test "should destroy caracteristicadeco1" do
    assert_difference('Caracteristicadeco1.count', -1) do
      delete caracteristicadeco1_url(@caracteristicadeco1)
    end

    assert_redirected_to caracteristicadeco1s_url
  end
end
