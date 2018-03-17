require 'money_s3/builders/base_builder'
require 'money_s3/builders/valuty'
require 'money_s3/builders/doklad_firma_type'
require 'money_s3/builders/konec_prij_firma_type'
require 'money_s3/builders/import'
require 'money_s3/builders/eshop'
require 'money_s3/builders/prepravce_type'
require 'money_s3/builders/typ_zasilky_type'
require 'money_s3/builders/prepr_dopln_udaj_type'
require 'money_s3/builders/moje_firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/prepr_dopln_udaj_type'
require 'money_s3/builders/pol_faktury_type'
require 'money_s3/builders/pol_objedn_type'
require 'money_s3/builders/uhrada_type'
require 'money_s3/builders/nep_platba_type'
require 'money_s3/builders/vazba_type'

module MoneyS3
  module Builders
    class FaktVyd
      include BaseBuilder

      attr_accessor :doklad, :ev_cis_dokl, :zpusob_uctovani, :guid, :rada, :cis_rada, :u_doklad, :popis, :vystaveno, :dat_uc_pr, :plneno_dph, :splatno, :uhrazeno, :doruceno, :dat_sk_poh, :konst_sym, :kod_dph, :ucel_zd_pl, :plnen_dph, :zjedn_d, :var_symbol, :spec_symbol, :prijat_dokl, :par_symbol, :puv_doklad, :zakazka, :c_objednavk, :ucet, :druh, :dobropis, :dobr_duzp, :zp_dopravy, :uhrada, :pred_kontac, :cinnost, :stat_moss, :zp_vyp_dph, :proplatit, :vyuctovano, :sazba_dph1, :sazba_dph2, :typ, :vystavil, :prik_uhrady, :pri_uhr_zbyv, :poznamka, :stredisko, :text_pred_fa, :text_za_fa, :text_pred_dl, :text_za_dl, :date_upom1, :date_upom2, :date_upom_l, :valuty_prop, :sum_zaloha, :sum_zaloha_c, :typ_transakce, :dodaci_podm, :druh_dopravy, :st_odesl_urc, :doprav_tuz, :doprav_zahr, :datum_its, :sleva, :vyridit_nej, :vyridit_do, :vyrizeno, :i_doklad_id, :i_dokl_agend, :pojisteno, :celkem, :valuty, :dod_odb, :konec_prij, :import, :eshop, :prepravce, :typ_zasillky, :prepr_vyplatne, :prepr_uhrada_dobirky, :prepr_trida, :moje_firma, :vlajky, :souhrn_dph, :prepr_seznam_sluzeb, :seznam_polozek, :seznam_zal_polozek, :seznam_uhrad, :seznam_nep_plateb, :seznam_vazeb, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Doklad') << doklad) if doklad
        root << (Ox::Element.new('EvCisDokl') << ev_cis_dokl) if ev_cis_dokl
        root << (Ox::Element.new('ZpusobUctovani') << zpusob_uctovani) if zpusob_uctovani
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('Rada') << rada) if rada
        root << (Ox::Element.new('CisRada') << cis_rada) if cis_rada
        root << (Ox::Element.new('UDoklad') << u_doklad) if u_doklad
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Vystaveno') << vystaveno) if vystaveno
        root << (Ox::Element.new('DatUcPr') << dat_uc_pr) if dat_uc_pr
        root << (Ox::Element.new('PlnenoDPH') << plneno_dph) if plneno_dph
        root << (Ox::Element.new('Splatno') << splatno) if splatno
        root << (Ox::Element.new('Uhrazeno') << uhrazeno) if uhrazeno
        root << (Ox::Element.new('Doruceno') << doruceno) if doruceno
        root << (Ox::Element.new('DatSkPoh') << dat_sk_poh) if dat_sk_poh
        root << (Ox::Element.new('KonstSym') << konst_sym) if konst_sym
        root << (Ox::Element.new('KodDPH') << kod_dph) if kod_dph
        root << (Ox::Element.new('UcelZdPl') << ucel_zd_pl) if ucel_zd_pl
        root << (Ox::Element.new('PlnenDPH') << plnen_dph) if plnen_dph
        root << (Ox::Element.new('ZjednD') << zjedn_d) if zjedn_d
        root << (Ox::Element.new('VarSymbol') << var_symbol) if var_symbol
        root << (Ox::Element.new('SpecSymbol') << spec_symbol) if spec_symbol
        root << (Ox::Element.new('PrijatDokl') << prijat_dokl) if prijat_dokl
        root << (Ox::Element.new('ParSymbol') << par_symbol) if par_symbol
        root << (Ox::Element.new('PuvDoklad') << puv_doklad) if puv_doklad
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('CObjednavk') << c_objednavk) if c_objednavk
        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('Dobropis') << dobropis) if dobropis
        root << (Ox::Element.new('DobrDUZP') << dobr_duzp) if dobr_duzp
        root << (Ox::Element.new('ZpDopravy') << zp_dopravy) if zp_dopravy
        root << (Ox::Element.new('Uhrada') << uhrada) if uhrada
        root << (Ox::Element.new('PredKontac') << pred_kontac) if pred_kontac
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('StatMOSS') << stat_moss) if stat_moss
        root << (Ox::Element.new('ZpVypDPH') << zp_vyp_dph) if zp_vyp_dph
        root << (Ox::Element.new('Proplatit') << proplatit) if proplatit
        root << (Ox::Element.new('Vyuctovano') << vyuctovano) if vyuctovano
        root << (Ox::Element.new('SazbaDPH1') << sazba_dph1) if sazba_dph1
        root << (Ox::Element.new('SazbaDPH2') << sazba_dph2) if sazba_dph2
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Vystavil') << vystavil) if vystavil
        root << (Ox::Element.new('PrikUhrady') << prik_uhrady) if prik_uhrady
        root << (Ox::Element.new('PriUhrZbyv') << pri_uhr_zbyv) if pri_uhr_zbyv
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('TextPredFa') << text_pred_fa) if text_pred_fa
        root << (Ox::Element.new('TextZaFa') << text_za_fa) if text_za_fa
        root << (Ox::Element.new('TextPredDL') << text_pred_dl) if text_pred_dl
        root << (Ox::Element.new('TextZaDL') << text_za_dl) if text_za_dl
        root << (Ox::Element.new('DateUpom1') << date_upom1) if date_upom1
        root << (Ox::Element.new('DateUpom2') << date_upom2) if date_upom2
        root << (Ox::Element.new('DateUpomL') << date_upom_l) if date_upom_l
        root << (Ox::Element.new('ValutyProp') << valuty_prop) if valuty_prop
        root << (Ox::Element.new('SumZaloha') << sum_zaloha) if sum_zaloha
        root << (Ox::Element.new('SumZalohaC') << sum_zaloha_c) if sum_zaloha_c
        root << (Ox::Element.new('TypTransakce') << typ_transakce) if typ_transakce
        root << (Ox::Element.new('DodaciPodm') << dodaci_podm) if dodaci_podm
        root << (Ox::Element.new('DruhDopravy') << druh_dopravy) if druh_dopravy
        root << (Ox::Element.new('StOdeslUrc') << st_odesl_urc) if st_odesl_urc
        root << (Ox::Element.new('DopravTuz') << doprav_tuz) if doprav_tuz
        root << (Ox::Element.new('DopravZahr') << doprav_zahr) if doprav_zahr
        root << (Ox::Element.new('DatumITS') << datum_its) if datum_its
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('VyriditNej') << vyridit_nej) if vyridit_nej
        root << (Ox::Element.new('Vyridit_do') << vyridit_do) if vyridit_do
        root << (Ox::Element.new('Vyrizeno') << vyrizeno) if vyrizeno
        root << (Ox::Element.new('iDokladID') << i_doklad_id) if i_doklad_id
        root << (Ox::Element.new('iDoklAgend') << i_dokl_agend) if i_dokl_agend
        root << (Ox::Element.new('Pojisteno') << pojisteno) if pojisteno
        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << Valuty.new(valuty, 'Valuty').builder if valuty
        root << DokladFirmaType.new(dod_odb, 'DodOdb').builder if dod_odb
        root << KonecPrijFirmaType.new(konec_prij, 'KonecPrij').builder if konec_prij
        root << Import.new(import, 'Import').builder if import
        root << Eshop.new(eshop, 'eshop').builder if eshop
        root << PrepravceType.new(prepravce, 'Prepravce').builder if prepravce
        root << TypZasilkyType.new(typ_zasillky, 'TypZasillky').builder if typ_zasillky
        root << PreprDoplnUdajType.new(prepr_vyplatne, 'Prepr_Vyplatne').builder if prepr_vyplatne
        root << PreprDoplnUdajType.new(prepr_uhrada_dobirky, 'Prepr_UhradaDobirky').builder if prepr_uhrada_dobirky
        root << PreprDoplnUdajType.new(prepr_trida, 'Prepr_Trida').builder if prepr_trida
        root << MojeFirmaType.new(moje_firma, 'MojeFirma').builder if moje_firma
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky
        root << SouhrnDPHType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph

        if prepr_seznam_sluzeb
          element = Ox::Element.new('Prepr_SeznamSluzeb')
          prepr_seznam_sluzeb.each { |i| element << PreprDoplnUdajType.new(i, 'Prepr_Sluzba').builder }
          root << element
        end

        if seznam_polozek
          element = Ox::Element.new('SeznamPolozek')
          seznam_polozek.each { |i| element << PolFakturyType.new(i, 'Polozka').builder }
          root << element
        end

        if seznam_zal_polozek
          element = Ox::Element.new('SeznamZalPolozek')
          seznam_zal_polozek.each { |i| element << PolObjednType.new(i, 'Polozka').builder }
          root << element
        end

        if seznam_uhrad
          element = Ox::Element.new('SeznamUhrad')
          seznam_uhrad.each { |i| element << UhradaType.new(i, 'Uhrada').builder }
          root << element
        end

        if seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          seznam_nep_plateb.each { |i| element << NepPlatbaType.new(i, 'NepPlatba').builder }
          root << element
        end

        if seznam_vazeb
          element = Ox::Element.new('SeznamVazeb')
          seznam_vazeb.each { |i| element << VazbaType.new(i, 'Vazba').builder }
          root << element
        end

        if dokumenty
          element = Ox::Element.new('Dokumenty')
          dokumenty.map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end