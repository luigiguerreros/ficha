require 'test_helper'

class ZonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zonal = zonals(:one)
  end

  test "should get index" do
    get zonals_url
    assert_response :success
  end

  test "should get new" do
    get new_zonal_url
    assert_response :success
  end

  test "should create zonal" do
    assert_difference('Zonal.count') do
      post zonals_url, params: { zonal: { descripcion: @zonal.descripcion, nombre_zona: @zonal.nombre_zona } }
    end

    assert_redirected_to zonal_url(Zonal.last)
  end

  test "should show zonal" do
    get zonal_url(@zonal)
    assert_response :success
  end

  test "should get edit" do
    get edit_zonal_url(@zonal)
    assert_response :success
  end

  test "should update zonal" do
    patch zonal_url(@zonal), params: { zonal: { descripcion: @zonal.descripcion, nombre_zona: @zonal.nombre_zona } }
    assert_redirected_to zonal_url(@zonal)
  end

  test "should destroy zonal" do
    assert_difference('Zonal.count', -1) do
      delete zonal_url(@zonal)
    end

    assert_redirected_to zonals_url
  end
end
