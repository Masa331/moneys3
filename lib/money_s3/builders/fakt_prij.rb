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
    class FaktPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :doklad
          element = Ox::Element.new('Doklad')
          element << attributes[:doklad] if attributes[:doklad]
          root << element
        end

        if attributes.key? :ev_cis_dokl
          element = Ox::Element.new('EvCisDokl')
          element << attributes[:ev_cis_dokl] if attributes[:ev_cis_dokl]
          root << element
        end

        if attributes.key? :zpusob_uctovani
          element = Ox::Element.new('ZpusobUctovani')
          element << attributes[:zpusob_uctovani] if attributes[:zpusob_uctovani]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :rada
          element = Ox::Element.new('Rada')
          element << attributes[:rada] if attributes[:rada]
          root << element
        end

        if attributes.key? :cis_rada
          element = Ox::Element.new('CisRada')
          element << attributes[:cis_rada] if attributes[:cis_rada]
          root << element
        end

        if attributes.key? :u_doklad
          element = Ox::Element.new('UDoklad')
          element << attributes[:u_doklad] if attributes[:u_doklad]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :vystaveno
          element = Ox::Element.new('Vystaveno')
          element << attributes[:vystaveno] if attributes[:vystaveno]
          root << element
        end

        if attributes.key? :dat_uc_pr
          element = Ox::Element.new('DatUcPr')
          element << attributes[:dat_uc_pr] if attributes[:dat_uc_pr]
          root << element
        end

        if attributes.key? :plneno_dph
          element = Ox::Element.new('PlnenoDPH')
          element << attributes[:plneno_dph] if attributes[:plneno_dph]
          root << element
        end

        if attributes.key? :splatno
          element = Ox::Element.new('Splatno')
          element << attributes[:splatno] if attributes[:splatno]
          root << element
        end

        if attributes.key? :uhrazeno
          element = Ox::Element.new('Uhrazeno')
          element << attributes[:uhrazeno] if attributes[:uhrazeno]
          root << element
        end

        if attributes.key? :doruceno
          element = Ox::Element.new('Doruceno')
          element << attributes[:doruceno] if attributes[:doruceno]
          root << element
        end

        if attributes.key? :dat_sk_poh
          element = Ox::Element.new('DatSkPoh')
          element << attributes[:dat_sk_poh] if attributes[:dat_sk_poh]
          root << element
        end

        if attributes.key? :konst_sym
          element = Ox::Element.new('KonstSym')
          element << attributes[:konst_sym] if attributes[:konst_sym]
          root << element
        end

        if attributes.key? :kod_dph
          element = Ox::Element.new('KodDPH')
          element << attributes[:kod_dph] if attributes[:kod_dph]
          root << element
        end

        if attributes.key? :ucel_zd_pl
          element = Ox::Element.new('UcelZdPl')
          element << attributes[:ucel_zd_pl] if attributes[:ucel_zd_pl]
          root << element
        end

        if attributes.key? :plnen_dph
          element = Ox::Element.new('PlnenDPH')
          element << attributes[:plnen_dph] if attributes[:plnen_dph]
          root << element
        end

        if attributes.key? :zjedn_d
          element = Ox::Element.new('ZjednD')
          element << attributes[:zjedn_d] if attributes[:zjedn_d]
          root << element
        end

        if attributes.key? :var_symbol
          element = Ox::Element.new('VarSymbol')
          element << attributes[:var_symbol] if attributes[:var_symbol]
          root << element
        end

        if attributes.key? :spec_symbol
          element = Ox::Element.new('SpecSymbol')
          element << attributes[:spec_symbol] if attributes[:spec_symbol]
          root << element
        end

        if attributes.key? :prijat_dokl
          element = Ox::Element.new('PrijatDokl')
          element << attributes[:prijat_dokl] if attributes[:prijat_dokl]
          root << element
        end

        if attributes.key? :par_symbol
          element = Ox::Element.new('ParSymbol')
          element << attributes[:par_symbol] if attributes[:par_symbol]
          root << element
        end

        if attributes.key? :puv_doklad
          element = Ox::Element.new('PuvDoklad')
          element << attributes[:puv_doklad] if attributes[:puv_doklad]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :c_objednavk
          element = Ox::Element.new('CObjednavk')
          element << attributes[:c_objednavk] if attributes[:c_objednavk]
          root << element
        end

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :dobropis
          element = Ox::Element.new('Dobropis')
          element << attributes[:dobropis] if attributes[:dobropis]
          root << element
        end

        if attributes.key? :dobr_duzp
          element = Ox::Element.new('DobrDUZP')
          element << attributes[:dobr_duzp] if attributes[:dobr_duzp]
          root << element
        end

        if attributes.key? :zp_dopravy
          element = Ox::Element.new('ZpDopravy')
          element << attributes[:zp_dopravy] if attributes[:zp_dopravy]
          root << element
        end

        if attributes.key? :uhrada
          element = Ox::Element.new('Uhrada')
          element << attributes[:uhrada] if attributes[:uhrada]
          root << element
        end

        if attributes.key? :pred_kontac
          element = Ox::Element.new('PredKontac')
          element << attributes[:pred_kontac] if attributes[:pred_kontac]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :stat_moss
          element = Ox::Element.new('StatMOSS')
          element << attributes[:stat_moss] if attributes[:stat_moss]
          root << element
        end

        if attributes.key? :zp_vyp_dph
          element = Ox::Element.new('ZpVypDPH')
          element << attributes[:zp_vyp_dph] if attributes[:zp_vyp_dph]
          root << element
        end

        if attributes.key? :proplatit
          element = Ox::Element.new('Proplatit')
          element << attributes[:proplatit] if attributes[:proplatit]
          root << element
        end

        if attributes.key? :vyuctovano
          element = Ox::Element.new('Vyuctovano')
          element << attributes[:vyuctovano] if attributes[:vyuctovano]
          root << element
        end

        if attributes.key? :sazba_dph1
          element = Ox::Element.new('SazbaDPH1')
          element << attributes[:sazba_dph1] if attributes[:sazba_dph1]
          root << element
        end

        if attributes.key? :sazba_dph2
          element = Ox::Element.new('SazbaDPH2')
          element << attributes[:sazba_dph2] if attributes[:sazba_dph2]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :vystavil
          element = Ox::Element.new('Vystavil')
          element << attributes[:vystavil] if attributes[:vystavil]
          root << element
        end

        if attributes.key? :prik_uhrady
          element = Ox::Element.new('PrikUhrady')
          element << attributes[:prik_uhrady] if attributes[:prik_uhrady]
          root << element
        end

        if attributes.key? :pri_uhr_zbyv
          element = Ox::Element.new('PriUhrZbyv')
          element << attributes[:pri_uhr_zbyv] if attributes[:pri_uhr_zbyv]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :text_pred_fa
          element = Ox::Element.new('TextPredFa')
          element << attributes[:text_pred_fa] if attributes[:text_pred_fa]
          root << element
        end

        if attributes.key? :text_za_fa
          element = Ox::Element.new('TextZaFa')
          element << attributes[:text_za_fa] if attributes[:text_za_fa]
          root << element
        end

        if attributes.key? :text_pred_dl
          element = Ox::Element.new('TextPredDL')
          element << attributes[:text_pred_dl] if attributes[:text_pred_dl]
          root << element
        end

        if attributes.key? :text_za_dl
          element = Ox::Element.new('TextZaDL')
          element << attributes[:text_za_dl] if attributes[:text_za_dl]
          root << element
        end

        if attributes.key? :date_upom1
          element = Ox::Element.new('DateUpom1')
          element << attributes[:date_upom1] if attributes[:date_upom1]
          root << element
        end

        if attributes.key? :date_upom2
          element = Ox::Element.new('DateUpom2')
          element << attributes[:date_upom2] if attributes[:date_upom2]
          root << element
        end

        if attributes.key? :date_upom_l
          element = Ox::Element.new('DateUpomL')
          element << attributes[:date_upom_l] if attributes[:date_upom_l]
          root << element
        end

        if attributes.key? :valuty_prop
          element = Ox::Element.new('ValutyProp')
          element << attributes[:valuty_prop] if attributes[:valuty_prop]
          root << element
        end

        if attributes.key? :sum_zaloha
          element = Ox::Element.new('SumZaloha')
          element << attributes[:sum_zaloha] if attributes[:sum_zaloha]
          root << element
        end

        if attributes.key? :sum_zaloha_c
          element = Ox::Element.new('SumZalohaC')
          element << attributes[:sum_zaloha_c] if attributes[:sum_zaloha_c]
          root << element
        end

        if attributes.key? :typ_transakce
          element = Ox::Element.new('TypTransakce')
          element << attributes[:typ_transakce] if attributes[:typ_transakce]
          root << element
        end

        if attributes.key? :dodaci_podm
          element = Ox::Element.new('DodaciPodm')
          element << attributes[:dodaci_podm] if attributes[:dodaci_podm]
          root << element
        end

        if attributes.key? :druh_dopravy
          element = Ox::Element.new('DruhDopravy')
          element << attributes[:druh_dopravy] if attributes[:druh_dopravy]
          root << element
        end

        if attributes.key? :st_odesl_urc
          element = Ox::Element.new('StOdeslUrc')
          element << attributes[:st_odesl_urc] if attributes[:st_odesl_urc]
          root << element
        end

        if attributes.key? :doprav_tuz
          element = Ox::Element.new('DopravTuz')
          element << attributes[:doprav_tuz] if attributes[:doprav_tuz]
          root << element
        end

        if attributes.key? :doprav_zahr
          element = Ox::Element.new('DopravZahr')
          element << attributes[:doprav_zahr] if attributes[:doprav_zahr]
          root << element
        end

        if attributes.key? :datum_its
          element = Ox::Element.new('DatumITS')
          element << attributes[:datum_its] if attributes[:datum_its]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :vyridit_nej
          element = Ox::Element.new('VyriditNej')
          element << attributes[:vyridit_nej] if attributes[:vyridit_nej]
          root << element
        end

        if attributes.key? :vyridit_do
          element = Ox::Element.new('Vyridit_do')
          element << attributes[:vyridit_do] if attributes[:vyridit_do]
          root << element
        end

        if attributes.key? :vyrizeno
          element = Ox::Element.new('Vyrizeno')
          element << attributes[:vyrizeno] if attributes[:vyrizeno]
          root << element
        end

        if attributes.key? :i_doklad_id
          element = Ox::Element.new('iDokladID')
          element << attributes[:i_doklad_id] if attributes[:i_doklad_id]
          root << element
        end

        if attributes.key? :i_dokl_agend
          element = Ox::Element.new('iDoklAgend')
          element << attributes[:i_dokl_agend] if attributes[:i_dokl_agend]
          root << element
        end

        if attributes.key? :pojisteno
          element = Ox::Element.new('Pojisteno')
          element << attributes[:pojisteno] if attributes[:pojisteno]
          root << element
        end

        if attributes.key? :celkem
          element = Ox::Element.new('Celkem')
          element << attributes[:celkem] if attributes[:celkem]
          root << element
        end

        if attributes.key? :valuty
          root << Valuty.new(attributes[:valuty], 'Valuty').builder
        end

        if attributes.key? :dod_odb
          root << DokladFirmaType.new(attributes[:dod_odb], 'DodOdb').builder
        end

        if attributes.key? :konec_prij
          root << KonecPrijFirmaType.new(attributes[:konec_prij], 'KonecPrij').builder
        end

        if attributes.key? :import
          root << Import.new(attributes[:import], 'Import').builder
        end

        if attributes.key? :eshop
          root << Eshop.new(attributes[:eshop], 'eshop').builder
        end

        if attributes.key? :prepravce
          root << PrepravceType.new(attributes[:prepravce], 'Prepravce').builder
        end

        if attributes.key? :typ_zasillky
          root << TypZasilkyType.new(attributes[:typ_zasillky], 'TypZasillky').builder
        end

        if attributes.key? :prepr_vyplatne
          root << PreprDoplnUdajType.new(attributes[:prepr_vyplatne], 'Prepr_Vyplatne').builder
        end

        if attributes.key? :prepr_uhrada_dobirky
          root << PreprDoplnUdajType.new(attributes[:prepr_uhrada_dobirky], 'Prepr_UhradaDobirky').builder
        end

        if attributes.key? :prepr_trida
          root << PreprDoplnUdajType.new(attributes[:prepr_trida], 'Prepr_Trida').builder
        end

        if attributes.key? :moje_firma
          root << MojeFirmaType.new(attributes[:moje_firma], 'MojeFirma').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        if attributes.key? :prepr_seznam_sluzeb
          element = Ox::Element.new('Prepr_SeznamSluzeb')
          attributes[:prepr_seznam_sluzeb].each { |i| element << PreprDoplnUdajType.new(i, 'Prepr_Sluzba').builder }
          root << element
        end

        if attributes.key? :seznam_polozek
          element = Ox::Element.new('SeznamPolozek')
          attributes[:seznam_polozek].each { |i| element << PolFakturyType.new(i, 'Polozka').builder }
          root << element
        end

        if attributes.key? :seznam_zal_polozek
          element = Ox::Element.new('SeznamZalPolozek')
          attributes[:seznam_zal_polozek].each { |i| element << PolObjednType.new(i, 'Polozka').builder }
          root << element
        end

        if attributes.key? :seznam_uhrad
          element = Ox::Element.new('SeznamUhrad')
          attributes[:seznam_uhrad].each { |i| element << UhradaType.new(i, 'Uhrada').builder }
          root << element
        end

        if attributes.key? :seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          attributes[:seznam_nep_plateb].each { |i| element << NepPlatbaType.new(i, 'NepPlatba').builder }
          root << element
        end

        if attributes.key? :seznam_vazeb
          element = Ox::Element.new('SeznamVazeb')
          attributes[:seznam_vazeb].each { |i| element << VazbaType.new(i, 'Vazba').builder }
          root << element
        end

        if attributes.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          attributes[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end