require 'test_helper'

class SubtiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subtipo = subtipos(:one)
  end

  test "should get index" do
    get subtipos_url
    assert_response :success
  end

  test "should get new" do
    get new_subtipo_url
    assert_response :success
  end

  test "should create subtipo" do
    assert_difference('Subtipo.count') do
      post subtipos_url, params: { subtipo: { descripcion: @subtipo.descripcion, nombre_subtipo: @subtipo.nombre_subtipo } }
    end

    assert_redirected_to subtipo_url(Subtipo.last)
  end

  test "should show subtipo" do
    get subtipo_url(@subtipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_subtipo_url(@subtipo)
    assert_response :success
  end

  test "should update subtipo" do
    patch subtipo_url(@subtipo), params: { subtipo: { descripcion: @subtipo.descripcion, nombre_subtipo: @subtipo.nombre_subtipo } }
    assert_redirected_to subtipo_url(@subtipo)
  end

  test "should destroy subtipo" do
    assert_difference('Subtipo.count', -1) do
      delete subtipo_url(@subtipo)
    end

    assert_redirected_to subtipos_url
  end
end
