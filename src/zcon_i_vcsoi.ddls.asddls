@AccessControl.authorizationCheck: #CHECK
@AbapCatalog.sqlViewName: 'ZCON_IVCSOI'
@AbapCatalog.preserveKey: true
@EndUserText.label: 'Vertriebssbelegposition VAKO'
define root view ZCON_I_VcSoI
  as select from I_SalesOrderItem as SoI
  association [1] to I_Material as _Material on $projection.Material = _Material.Material
{
      @UI: { identification: [ { position: 10 } ], 
             lineItem: [ { position: 10 }, 
                         { type: #FOR_ACTION, dataAction: 'set_scheduleline_category', label: 'Freigeben'   } ]}
  key SoI.SalesOrder      as SalesOrder,
      @UI: { lineItem: [ { position: 20 } ] }
  key SoI.SalesOrderItem  as SalesOrderItem,
      @UI: { lineItem: [ { position: 30 } ] }
      SoI.Material        as Material,
      @UI: { lineItem: [ { position: 40 } ] }
      SoI.SDProcessStatus as Status,

      _Material // Make association public
}
where
      _Material.ConfigurableMaterial =  'X'
  and SoI.SDProcessStatus            <> 'C'
