@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking Supplement'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_BOOKSUPPL_LOG_WN
  as projection on z_i_booksuppl_log_wn
{
  key travel_id                   as TravelID,
  key booking_id                  as BookingID,
  key booking_supplement_id       as BookinSupplementID,
      @ObjectModel.text.element:['SupplementDescription']
      supplement_id               as SupplementID,
      _SupplementText.Description as SupplementDescription : localized,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                       as Price,
      @Semantics.currencyCode: true
      currency                    as CurrencyCode,
      last_changed_at             as LastChangedAt,
      /* Associations */
      _Travel  : redirected to Z_C_TRAVEL_LOG_WN,
      _Booking : redirected to parent Z_C_BOOKING_LOG_WN,
      _Product,
      _SupplementText

}
