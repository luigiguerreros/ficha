require 'test_helper'

class GestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gestion = gestions(:one)
  end

  test "should get index" do
    get gestions_url
    assert_response :success
  end

  test "should get new" do
    get new_gestion_url
    assert_response :success
  end

  test "should create gestion" do
    assert_difference('Gestion.count') do
      post gestions_url, params: { gestion: { administrativa_id: @gestion.administrativa_id, antenapunto_id: @gestion.antenapunto_id, campana_id: @gestion.campana_id, caracteristicadeco1_id: @gestion.caracteristicadeco1_id, caracteristicadeco2_id: @gestion.caracteristicadeco2_id, caracteristicamodem_id: @gestion.caracteristicamodem_id, caracteristicastelefono_id: @gestion.caracteristicastelefono_id, codigo: @gestion.codigo, deco1_id: @gestion.deco1_id, deco2_id: @gestion.deco2_id, descuento_id: @gestion.descuento_id, equipamiento: @gestion.equipamiento, internet_id: @gestion.internet_id, linea_id: @gestion.linea_id, modem_id: @gestion.modem_id, modopago_id: @gestion.modopago_id, monto_instalacion: @gestion.monto_instalacion, origen_id: @gestion.origen_id, paquete_id: @gestion.paquete_id, promocion_id: @gestion.promocion_id, subtipo_id: @gestion.subtipo_id, tecno_id: @gestion.tecno_id, telefono_id: @gestion.telefono_id, tipo_id: @gestion.tipo_id, zonal_id: @gestion.zonal_id } }
    end

    assert_redirected_to gestion_url(Gestion.last)
  end

  test "should show gestion" do
    get gestion_url(@gestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_gestion_url(@gestion)
    assert_response :success
  end

  test "should update gestion" do
    patch gestion_url(@gestion), params: { gestion: { administrativa_id: @gestion.administrativa_id, antenapunto_id: @gestion.antenapunto_id, campana_id: @gestion.campana_id, caracteristicadeco1_id: @gestion.caracteristicadeco1_id, caracteristicadeco2_id: @gestion.caracteristicadeco2_id, caracteristicamodem_id: @gestion.caracteristicamodem_id, caracteristicastelefono_id: @gestion.caracteristicastelefono_id, codigo: @gestion.codigo, deco1_id: @gestion.deco1_id, deco2_id: @gestion.deco2_id, descuento_id: @gestion.descuento_id, equipamiento: @gestion.equipamiento, internet_id: @gestion.internet_id, linea_id: @gestion.linea_id, modem_id: @gestion.modem_id, modopago_id: @gestion.modopago_id, monto_instalacion: @gestion.monto_instalacion, origen_id: @gestion.origen_id, paquete_id: @gestion.paquete_id, promocion_id: @gestion.promocion_id, subtipo_id: @gestion.subtipo_id, tecno_id: @gestion.tecno_id, telefono_id: @gestion.telefono_id, tipo_id: @gestion.tipo_id, zonal_id: @gestion.zonal_id } }
    assert_redirected_to gestion_url(@gestion)
  end

  test "should destroy gestion" do
    assert_difference('Gestion.count', -1) do
      delete gestion_url(@gestion)
    end

    assert_redirected_to gestions_url
  end
end
