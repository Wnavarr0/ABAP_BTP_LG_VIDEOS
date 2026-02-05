@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_WN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_det_customer_wn
  as select from zrent_customers
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
