module MoneyS3
  module Builders
    class FakturaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Doklad', data[:doklad]) if data.key? :doklad
        root << build_element('EvCisDokl', data[:ev_cis_dokl]) if data.key? :ev_cis_dokl
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani]) if data.key? :zpusob_uctovani
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('Rada', data[:rada]) if data.key? :rada
        root << build_element('CisRada', data[:cis_rada]) if data.key? :cis_rada
        root << build_element('UDoklad', data[:u_doklad]) if data.key? :u_doklad
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Vystaveno', data[:vystaveno]) if data.key? :vystaveno
        root << build_element('DatUcPr', data[:dat_uc_pr]) if data.key? :dat_uc_pr
        root << build_element('PlnenoDPH', data[:plneno_dph]) if data.key? :plneno_dph
        root << build_element('Splatno', data[:splatno]) if data.key? :splatno
        root << build_element('Uhrazeno', data[:uhrazeno]) if data.key? :uhrazeno
        root << build_element('Doruceno', data[:doruceno]) if data.key? :doruceno
        root << build_element('DatSkPoh', data[:dat_sk_poh]) if data.key? :dat_sk_poh
        root << build_element('KonstSym', data[:konst_sym]) if data.key? :konst_sym
        root << build_element('KodDPH', data[:kod_dph]) if data.key? :kod_dph
        root << build_element('UcelZdPl', data[:ucel_zd_pl]) if data.key? :ucel_zd_pl
        root << build_element('PlnenDPH', data[:plnen_dph]) if data.key? :plnen_dph
        root << build_element('ZjednD', data[:zjedn_d]) if data.key? :zjedn_d
        root << build_element('VarSymbol', data[:var_symbol]) if data.key? :var_symbol
        root << build_element('SpecSymbol', data[:spec_symbol]) if data.key? :spec_symbol
        root << build_element('PrijatDokl', data[:prijat_dokl]) if data.key? :prijat_dokl
        root << build_element('ParSymbol', data[:par_symbol]) if data.key? :par_symbol
        root << build_element('PuvDoklad', data[:puv_doklad]) if data.key? :puv_doklad
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('CObjednavk', data[:c_objednavk]) if data.key? :c_objednavk
        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('Dobropis', data[:dobropis]) if data.key? :dobropis
        root << build_element('DobrDUZP', data[:dobr_duzp]) if data.key? :dobr_duzp
        root << build_element('ZpDopravy', data[:zp_dopravy]) if data.key? :zp_dopravy
        root << build_element('Uhrada', data[:uhrada]) if data.key? :uhrada
        root << build_element('PredKontac', data[:pred_kontac]) if data.key? :pred_kontac
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('StatMOSS', data[:stat_moss]) if data.key? :stat_moss
        root << build_element('ZpVypDPH', data[:zp_vyp_dph]) if data.key? :zp_vyp_dph
        root << build_element('Proplatit', data[:proplatit]) if data.key? :proplatit
        root << build_element('Vyuctovano', data[:vyuctovano]) if data.key? :vyuctovano
        root << build_element('SazbaDPH1', data[:sazba_dph1]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2]) if data.key? :sazba_dph2
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Vystavil', data[:vystavil]) if data.key? :vystavil
        root << build_element('PrikUhrady', data[:prik_uhrady]) if data.key? :prik_uhrady
        root << build_element('PriUhrZbyv', data[:pri_uhr_zbyv]) if data.key? :pri_uhr_zbyv
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('TextPredFa', data[:text_pred_fa]) if data.key? :text_pred_fa
        root << build_element('TextZaFa', data[:text_za_fa]) if data.key? :text_za_fa
        root << build_element('TextPredDL', data[:text_pred_dl]) if data.key? :text_pred_dl
        root << build_element('TextZaDL', data[:text_za_dl]) if data.key? :text_za_dl
        root << build_element('DateUpom1', data[:date_upom1]) if data.key? :date_upom1
        root << build_element('DateUpom2', data[:date_upom2]) if data.key? :date_upom2
        root << build_element('DateUpomL', data[:date_upom_l]) if data.key? :date_upom_l
        root << build_element('ValutyProp', data[:valuty_prop]) if data.key? :valuty_prop
        root << build_element('SumZaloha', data[:sum_zaloha]) if data.key? :sum_zaloha
        root << build_element('SumZalohaC', data[:sum_zaloha_c]) if data.key? :sum_zaloha_c
        if data.key? :dod_odb
          root << DokladFirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :konec_prij
          root << KonecPrijFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end
        root << build_element('TypTransakce', data[:typ_transakce]) if data.key? :typ_transakce
        root << build_element('DodaciPodm', data[:dodaci_podm]) if data.key? :dodaci_podm
        root << build_element('DruhDopravy', data[:druh_dopravy]) if data.key? :druh_dopravy
        root << build_element('StOdeslUrc', data[:st_odesl_urc]) if data.key? :st_odesl_urc
        root << build_element('DopravTuz', data[:doprav_tuz]) if data.key? :doprav_tuz
        root << build_element('DopravZahr', data[:doprav_zahr]) if data.key? :doprav_zahr
        root << build_element('DatumITS', data[:datum_its]) if data.key? :datum_its
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('VyriditNej', data[:vyridit_nej]) if data.key? :vyridit_nej
        root << build_element('Vyridit_do', data[:vyridit_do]) if data.key? :vyridit_do
        root << build_element('Vyrizeno', data[:vyrizeno]) if data.key? :vyrizeno
        root << build_element('iDokladID', data[:i_doklad_id]) if data.key? :i_doklad_id
        root << build_element('iDoklAgend', data[:i_dokl_agend]) if data.key? :i_dokl_agend
        if data.key? :import
          root << Import.new('Import', data[:import]).builder
        end
        if data.key? :eshop
          root << Eshop.new('eshop', data[:eshop]).builder
        end
        root << build_element('Pojisteno', data[:pojisteno]) if data.key? :pojisteno
        if data.key? :prepravce
          root << PrepravceType.new('Prepravce', data[:prepravce]).builder
        end
        if data.key? :typ_zasillky
          root << TypZasilkyType.new('TypZasillky', data[:typ_zasillky]).builder
        end
        if data.key? :prepr_vyplatne
          root << PreprDoplnUdajType.new('Prepr_Vyplatne', data[:prepr_vyplatne]).builder
        end
        if data.key? :prepr_uhrada_dobirky
          root << PreprDoplnUdajType.new('Prepr_UhradaDobirky', data[:prepr_uhrada_dobirky]).builder
        end
        if data.key? :prepr_trida
          root << PreprDoplnUdajType.new('Prepr_Trida', data[:prepr_trida]).builder
        end
        if data.key? :prepr_seznam_sluzeb
          element = Ox::Element.new('Prepr_SeznamSluzeb')
          data[:prepr_seznam_sluzeb].each { |i| element << PreprDoplnUdajType.new('Prepr_Sluzba', i).builder }
          root << element
        end
        if data.key? :seznam_polozek
          element = Ox::Element.new('SeznamPolozek')
          data[:seznam_polozek].each { |i| element << PolFakturyType.new('Polozka', i).builder }
          root << element
        end
        if data.key? :seznam_zal_polozek
          element = Ox::Element.new('SeznamZalPolozek')
          data[:seznam_zal_polozek].each { |i| element << PolObjednType.new('Polozka', i).builder }
          root << element
        end
        if data.key? :seznam_uhrad
          element = Ox::Element.new('SeznamUhrad')
          data[:seznam_uhrad].each { |i| element << UhradaType.new('Uhrada', i).builder }
          root << element
        end
        if data.key? :moje_firma
          root << MojeFirmaType.new('MojeFirma', data[:moje_firma]).builder
        end
        if data.key? :seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          data[:seznam_nep_plateb].each { |i| element << NepPlatbaType.new('NepPlatba', i).builder }
          root << element
        end
        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end
        if data.key? :seznam_vazeb
          element = Ox::Element.new('SeznamVazeb')
          data[:seznam_vazeb].each { |i| element << VazbaType.new('Vazba', i).builder }
          root << element
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end