// BW = Baden-Württemberg
// BY = Bayern
// BE = Berlin
// BB = Brandenburg
// HB = Bremen
// HH = Hamburg
// HE = Hessen
// MV = Mecklenburg-Vorpommern
// NI = Niedersachsen
// NW = Nordrhein-Westfalen
// RP = Rheinland-Pfalz
// SL = Saarland
// SN = Sachsen
// ST = Sachsen-Anhalt
// SH = Schleswig-Holstein
// TH = Thüringen
enum _StateSignatureProps {
  bb(
    'NAME',
    [
      'AKTFLAECHE',
      'BINDUNGEN',
      'FLAECHE',
      'HA_OEVF',
      'NAME',
      'NUMMER',
      'NUTZ_BEZ',
      'NUTZ_CODE',
      'OEVF_TYPEN',
    ],
  ),
  bw(
    'bez',
    [
      'bez',
      'dat_abschl',
      'dat_bearb',
      'flaeche_ha',
      'geo_id',
      'meldev_id',
      'ud_id',
    ],
  ),
  by(
    'Name',
    [
      'Betrieb',
      'Flaeche',
      'Jahr',
      'LFlaeche',
      'Land',
      'Name',
      'Nummer',
    ],
  ),
  he(
    'LAGE_BEZ',
    [
      'AGZ',
      'ANSAATJAHR',
      'BEANTR_GRO',
      'BEMERKUNG',
      'CL_B',
      'DGL_SEIT',
      'EREGION',
      'EROSION',
      'FEHLER',
      'FLIK',
      'GUELTIG',
      'HALM',
      'ID',
      'KUP',
      'KUP_BEGINN',
      'KUP_ENDE',
      'LAENGE',
      'LAGE_BEZ',
      'MAX_BREITE',
      'MIN_BREITE',
      'MIT_BREITE',
      'MSN_E21_B',
      'MSN_E22_B',
      'NCODE',
      'NICHT_AGZ',
      'NICHT_ZA',
      'NLF_BEGINN',
      'NLF_ENDE',
      'NUTZUNG',
      'OEVF',
      'PI',
      'SCHLAGNR',
      'SNR_H',
      'SORTE_HANF',
      'V_FLIK',
      'V_NCODE',
      'V_OEVF',
      'V_SCHLAGNR',
      'V_SCHLAG_G',
    ],
  ),
  mv(
    'NAME',
    [
      'NUMMER',
      'NAME',
      'FLAECHE',
      'AKTFLAECHE',
      'NUTZ_CODE',
      'NUTZ_BEZ',
      'OEVF_TYPEN',
      'HA_OEVF',
      'BINDUNGEN',
    ],
  ),
  nw(
    'SCHLAGBEZ',
    [
      'ADRESSNR',
      'CODENUTZ',
      'DAUERGRUEN',
      'ERWASSER',
      'ERWIND',
      'FLIK',
      'FLNETTO',
      'LFDNRFLIK',
      'NUTZBEZ',
      'SCHLAGBEZ',
      'SCHLAGNR',
      'TEILSCHLAG',
      'WJAHR',
    ],
  ),
  sn(
    'FB_BEZEICH',
    [
      'JAHR',
      'BNR',
      'FELDSTCKNR',
      'SCHLAGNR',
      'FB_BEZEICH',
      'HKCODE_ANT',
      'FLAECHE_AN',
      'FLAECHE_VO',
      'AUM_INFO',
      'Shape_STAr',
      'Shape_STLe',
    ],
  ),
  st(
    'NAME',
    [
      'NUMMER',
      'NAME',
      'FLAECHE',
      'AKTFLAECHE',
      'NUTZ_CODE',
      'NUTZ_BEZ',
      'OEVF_TYPEN',
      'HA_OEVF',
      'BINDUNGEN',
    ],
  ),
  th(
    'LABEL',
    [
      'PI',
      'LFDNR',
      'BRSCHLAG',
      'FBI',
      'RFK',
      'RFKBEM',
      'FL',
      'ROWID_',
      'LABEL',
      'GEPR',
      'HASH',
    ],
  ),
  ;

  final String nameField;
  final List<String> existingProperties;

  const _StateSignatureProps(this.nameField, this.existingProperties);
}

class LocalPropertyFieldNameMapper {
  String? map(Map<String, dynamic>? properties) {
    if (properties == null) {
      return null;
    }
    for (final stateSignatureProps in _StateSignatureProps.values) {
      if (properties.containsAll(stateSignatureProps.existingProperties)) {
        return properties[stateSignatureProps.nameField];
      }
    }
    return null;
  }
}

extension on Map<String, dynamic> {
  bool containsAll(List<String> keys) => keys.every((key) => containsKey(key));
}
