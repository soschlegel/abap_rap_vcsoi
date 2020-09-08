@AbapCatalog.sqlViewAppendName: 'ZCON_EMARA'
@EndUserText.label: 'Erweiterung: Kennz. Konfig. Material'
extend view I_Material with ZCON_E_VcMaterial
{
  mara.kzkfg as ConfigurableMaterial
}
