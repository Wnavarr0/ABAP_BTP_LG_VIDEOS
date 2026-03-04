@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_BOOKING_LOG_WN
  as projection on z_i_booking_log_wn
{
  key travel_id       as TravelID,
  key booking_id      as BookingID,
      booking_date    as BookingDate,
      customer_id     as CustomerID,
      @ObjectModel.text.element: ['CarrierName']
      carrier_id      as CarrierID,
      _Carrier.Name   as CarrierName,
      connection_id   as ConnectionID,
      flight_date     as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price    as FlightPrice,
      @Semantics.currencyCode: true
      currency_code   as CurrencyCode,
      booking_status  as BookingStatus,
      last_changed_at as Last_ChangedAt,
      /* Associations */
      _Travel            : redirected to parent Z_C_TRAVEL_LOG_WN,
      _BookingSupplement : redirected to composition child Z_C_BOOKSUPPL_LOG_WN,
      _Carrier,
      _Connection,
      _Customer

}
