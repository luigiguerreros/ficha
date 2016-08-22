class Gestion < ApplicationRecord
  belongs_to :origen
  belongs_to :campana
  belongs_to :zonal
  belongs_to :tipo
  belongs_to :subtipo
  belongs_to :paquete
  belongs_to :linea
  belongs_to :internet
  belongs_to :administrativa
  belongs_to :tecno
  belongs_to :modopago
  belongs_to :promocion
  belongs_to :descuento
  belongs_to :telefono
  belongs_to :caracteristicatelefono
  belongs_to :modem
  belongs_to :caracteristicamodem
  belongs_to :antenapunto
  belongs_to :deco1
  belongs_to :caracteristicadeco1
  belongs_to :deco2
  belongs_to :caracteristicadeco2
end
