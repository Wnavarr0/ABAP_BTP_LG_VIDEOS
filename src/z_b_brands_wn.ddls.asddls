@AbapCatalog.sqlViewName: 'ZV_BRANDSL_WN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_brands_wn
  as select from zrent_brands_wn
{
  key marca as Marca,
      url   as Imagen
}
