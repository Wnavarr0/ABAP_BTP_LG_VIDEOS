@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL_WN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
@Metadata.ignorePropagatedAnnotations: true
define view Z_b_rem_days_wn
  as select from zrent_cars_wn
{
  key matricula as Matrilula,
      marca     as Marca,
      case
      when alq_hasta > $session.system_date
      then dats_days_between( cast($session.system_date as abap.dats ), alq_hasta )
      end       as Dias

}
