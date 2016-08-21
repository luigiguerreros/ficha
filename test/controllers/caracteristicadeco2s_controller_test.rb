require 'test_helper'

class Caracteristicadeco2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caracteristicadeco2 = caracteristicadeco2s(:one)
  end

  test "should get index" do
    get caracteristicadeco2s_url
    assert_response :success
  end

  test "should get new" do
    get new_caracteristicadeco2_url
    assert_response :success
  end

  test "should create caracteristicadeco2" do
    assert_difference('Caracteristicadeco2.count') do
      post caracteristicadeco2s_url, params: { caracteristicadeco2: { costo: @caracteristicadeco2.costo, pack: @caracteristicadeco2.pack, tipo_pago: @caracteristicadeco2.tipo_pago } }
    end

    assert_redirected_to caracteristicadeco2_url(Caracteristicadeco2.last)
  end

  test "should show caracteristicadeco2" do
    get caracteristicadeco2_url(@caracteristicadeco2)
    assert_response :success
  end

  test "should get edit" do
    get edit_caracteristicadeco2_url(@caracteristicadeco2)
    assert_response :success
  end

  test "should update caracteristicadeco2" do
    patch caracteristicadeco2_url(@caracteristicadeco2), params: { caracteristicadeco2: { costo: @caracteristicadeco2.costo, pack: @caracteristicadeco2.pack, tipo_pago: @caracteristicadeco2.tipo_pago } }
    assert_redirected_to caracteristicadeco2_url(@caracteristicadeco2)
  end

  test "should destroy caracteristicadeco2" do
    assert_difference('Caracteristicadeco2.count', -1) do
      delete caracteristicadeco2_url(@caracteristicadeco2)
    end

    assert_redirected_to caracteristicadeco2s_url
  end
end
