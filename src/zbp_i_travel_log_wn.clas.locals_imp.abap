CLASS lhc_Travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Travel RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Travel RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Travel RESULT result.

    METHODS AcceptTravel FOR MODIFY
      IMPORTING keys FOR ACTION Travel~AcceptTravel RESULT result.

    METHODS CreateTravelByTemplate FOR MODIFY
      IMPORTING keys FOR ACTION Travel~CreateTravelByTemplate RESULT result.

    METHODS RejectTravel FOR MODIFY
      IMPORTING keys FOR ACTION Travel~RejectTravel RESULT result.

    METHODS ValidateCustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~ValidateCustomer.

    METHODS ValidateDates FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~ValidateDates.

    METHODS ValidateStatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~ValidateStatus.

ENDCLASS.

CLASS lhc_Travel IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD AcceptTravel.
  ENDMETHOD.

  METHOD CreateTravelByTemplate.
  ENDMETHOD.

  METHOD RejectTravel.
  ENDMETHOD.

  METHOD ValidateCustomer.
  ENDMETHOD.

  METHOD ValidateDates.
  ENDMETHOD.

  METHOD ValidateStatus.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_I_TRAVEL_LOG_WN DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_I_TRAVEL_LOG_WN IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
