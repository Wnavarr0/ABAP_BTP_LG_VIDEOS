@AbapCatalog.sqlViewName: 'ZV_RENTL_WN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_i_renting_wn
  as select from z_b_cars_wn as Cars
  association [1]    to Z_b_rem_days_wn     as _RemDays     on Cars.Matricula = _RemDays.Matrilula
  association [0..*] to z_b_brands_wn       as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_wn as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
       when _RemDays.Dias <= 0 then 0
       when _RemDays.Dias between 1 and 30 then 1
       when _RemDays.Dias between 31 and 100 then 2
       when _RemDays.Dias > 100  then 3
       else 0
       end as TiempoRenta,
      ''   as Estado,
      _Brands.Imagen,
      _DetCustomer

}
