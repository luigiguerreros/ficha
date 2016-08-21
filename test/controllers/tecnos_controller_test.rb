require 'test_helper'

class TecnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecno = tecnos(:one)
  end

  test "should get index" do
    get tecnos_url
    assert_response :success
  end

  test "should get new" do
    get new_tecno_url
    assert_response :success
  end

  test "should create tecno" do
    assert_difference('Tecno.count') do
      post tecnos_url, params: { tecno: { descripcion: @tecno.descripcion, tipo_tecnologia: @tecno.tipo_tecnologia } }
    end

    assert_redirected_to tecno_url(Tecno.last)
  end

  test "should show tecno" do
    get tecno_url(@tecno)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecno_url(@tecno)
    assert_response :success
  end

  test "should update tecno" do
    patch tecno_url(@tecno), params: { tecno: { descripcion: @tecno.descripcion, tipo_tecnologia: @tecno.tipo_tecnologia } }
    assert_redirected_to tecno_url(@tecno)
  end

  test "should destroy tecno" do
    assert_difference('Tecno.count', -1) do
      delete tecno_url(@tecno)
    end

    assert_redirected_to tecnos_url
  end
end
