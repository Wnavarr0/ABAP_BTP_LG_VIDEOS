@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
define view entity z_i_booksuppl_log_wn
  as select from zbooksuppl_log_w as BookingSupplement
  association        to parent z_i_booking_log_wn as _Booking        on  $projection.travel_id  = _Booking.travel_id
                                                                     and $projection.booking_id = _Booking.booking_id
  association [1..1] to z_i_travel_log_wn         as _Travel         on  $projection.travel_id = _Travel.travel_id
  association [1..1] to /DMO/I_Supplement         as _Product        on  $projection.supplement_id = _Product.SupplementID
  association [1..*] to /DMO/I_SupplementText     as _SupplementText on  $projection.supplement_id = _SupplementText.SupplementID
{
  key travel_id,
  key booking_id,
  key booking_supplement_id,
      supplement_id,

      @Semantics.amount.currencyCode: 'currency'
      price,
      //      @Semantics.currencyCode: true
      currency,
       last_changed_at,

      _Booking,
      _Travel,
      _Product,
      _SupplementText

}
