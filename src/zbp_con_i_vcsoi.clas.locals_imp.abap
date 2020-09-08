CLASS lhc_Item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS read FOR READ
      IMPORTING keys FOR READ Item RESULT result.

    METHODS set_scheduleline_category FOR MODIFY
      IMPORTING keys FOR ACTION Item~set_scheduleline_category RESULT result.

ENDCLASS.

CLASS lhc_Item IMPLEMENTATION.

  METHOD read.

    LOOP AT keys INTO DATA(ls_key).

      SELECT * FROM zcon_i_vcsoi
          APPENDING CORRESPONDING FIELDS OF TABLE @result
          WHERE SalesOrder        EQ @ls_key-SalesOrder
            AND SalesOrderItem    EQ @ls_key-SalesOrderItem.

    ENDLOOP.

  ENDMETHOD.

  METHOD set_scheduleline_category.

    READ ENTITY ZCON_I_VcSoI
      FIELDS ( SalesOrder )
      WITH VALUE #(
          FOR key IN keys ( SalesOrder = key-SalesOrder
                            SalesOrderItem = key-SalesOrderItem ) )
      RESULT DATA(lt_soi)
      FAILED failed
      REPORTED reported.


  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCON_I_VcSoI DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS check_before_save REDEFINITION.

    METHODS finalize          REDEFINITION.

    METHODS save              REDEFINITION.

ENDCLASS.

CLASS lsc_ZCON_I_VcSoI IMPLEMENTATION.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD finalize.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

ENDCLASS.
