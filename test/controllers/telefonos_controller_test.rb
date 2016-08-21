require 'test_helper'

class TelefonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telefono = telefonos(:one)
  end

  test "should get index" do
    get telefonos_url
    assert_response :success
  end

  test "should get new" do
    get new_telefono_url
    assert_response :success
  end

  test "should create telefono" do
    assert_difference('Telefono.count') do
      post telefonos_url, params: { telefono: { nombre_telefono: @telefono.nombre_telefono, oc_telefono: @telefono.oc_telefono, ps_telefono: @telefono.ps_telefono } }
    end

    assert_redirected_to telefono_url(Telefono.last)
  end

  test "should show telefono" do
    get telefono_url(@telefono)
    assert_response :success
  end

  test "should get edit" do
    get edit_telefono_url(@telefono)
    assert_response :success
  end

  test "should update telefono" do
    patch telefono_url(@telefono), params: { telefono: { nombre_telefono: @telefono.nombre_telefono, oc_telefono: @telefono.oc_telefono, ps_telefono: @telefono.ps_telefono } }
    assert_redirected_to telefono_url(@telefono)
  end

  test "should destroy telefono" do
    assert_difference('Telefono.count', -1) do
      delete telefono_url(@telefono)
    end

    assert_redirected_to telefonos_url
  end
end
