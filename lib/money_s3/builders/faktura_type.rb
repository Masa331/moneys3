module MoneyS3
  module Builders
    class FakturaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Doklad', data[:doklad], data[:doklad_attributes]) if data.key? :doklad
        root << build_element('EvCisDokl', data[:ev_cis_dokl], data[:ev_cis_dokl_attributes]) if data.key? :ev_cis_dokl
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani], data[:zpusob_uctovani_attributes]) if data.key? :zpusob_uctovani
        root << build_element('GUID', data[:guid], data[:guid_attributes]) if data.key? :guid
        root << build_element('Rada', data[:rada], data[:rada_attributes]) if data.key? :rada
        root << build_element('CisRada', data[:cis_rada], data[:cis_rada_attributes]) if data.key? :cis_rada
        root << build_element('UDoklad', data[:u_doklad], data[:u_doklad_attributes]) if data.key? :u_doklad
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Vystaveno', data[:vystaveno], data[:vystaveno_attributes]) if data.key? :vystaveno
        root << build_element('DatUcPr', data[:dat_uc_pr], data[:dat_uc_pr_attributes]) if data.key? :dat_uc_pr
        root << build_element('PlnenoDPH', data[:plneno_dph], data[:plneno_dph_attributes]) if data.key? :plneno_dph
        root << build_element('Splatno', data[:splatno], data[:splatno_attributes]) if data.key? :splatno
        root << build_element('Uhrazeno', data[:uhrazeno], data[:uhrazeno_attributes]) if data.key? :uhrazeno
        root << build_element('Doruceno', data[:doruceno], data[:doruceno_attributes]) if data.key? :doruceno
        root << build_element('DatSkPoh', data[:dat_sk_poh], data[:dat_sk_poh_attributes]) if data.key? :dat_sk_poh
        root << build_element('KonstSym', data[:konst_sym], data[:konst_sym_attributes]) if data.key? :konst_sym
        root << build_element('KodDPH', data[:kod_dph], data[:kod_dph_attributes]) if data.key? :kod_dph
        root << build_element('UcelZdPl', data[:ucel_zd_pl], data[:ucel_zd_pl_attributes]) if data.key? :ucel_zd_pl
        root << build_element('PlnenDPH', data[:plnen_dph], data[:plnen_dph_attributes]) if data.key? :plnen_dph
        root << build_element('ZjednD', data[:zjedn_d], data[:zjedn_d_attributes]) if data.key? :zjedn_d
        root << build_element('VarSymbol', data[:var_symbol], data[:var_symbol_attributes]) if data.key? :var_symbol
        root << build_element('SpecSymbol', data[:spec_symbol], data[:spec_symbol_attributes]) if data.key? :spec_symbol
        root << build_element('PrijatDokl', data[:prijat_dokl], data[:prijat_dokl_attributes]) if data.key? :prijat_dokl
        root << build_element('ParSymbol', data[:par_symbol], data[:par_symbol_attributes]) if data.key? :par_symbol
        root << build_element('PuvDoklad', data[:puv_doklad], data[:puv_doklad_attributes]) if data.key? :puv_doklad
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('CObjednavk', data[:c_objednavk], data[:c_objednavk_attributes]) if data.key? :c_objednavk
        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('Dobropis', data[:dobropis], data[:dobropis_attributes]) if data.key? :dobropis
        root << build_element('DobrDUZP', data[:dobr_duzp], data[:dobr_duzp_attributes]) if data.key? :dobr_duzp
        root << build_element('ZpDopravy', data[:zp_dopravy], data[:zp_dopravy_attributes]) if data.key? :zp_dopravy
        root << build_element('Uhrada', data[:uhrada], data[:uhrada_attributes]) if data.key? :uhrada
        root << build_element('PredKontac', data[:pred_kontac], data[:pred_kontac_attributes]) if data.key? :pred_kontac
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('StatMOSS', data[:stat_moss], data[:stat_moss_attributes]) if data.key? :stat_moss
        root << build_element('ZpVypDPH', data[:zp_vyp_dph], data[:zp_vyp_dph_attributes]) if data.key? :zp_vyp_dph
        root << build_element('Proplatit', data[:proplatit], data[:proplatit_attributes]) if data.key? :proplatit
        root << build_element('Vyuctovano', data[:vyuctovano], data[:vyuctovano_attributes]) if data.key? :vyuctovano
        root << build_element('SazbaDPH1', data[:sazba_dph1], data[:sazba_dph1_attributes]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2], data[:sazba_dph2_attributes]) if data.key? :sazba_dph2
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Vystavil', data[:vystavil], data[:vystavil_attributes]) if data.key? :vystavil
        root << build_element('PrikUhrady', data[:prik_uhrady], data[:prik_uhrady_attributes]) if data.key? :prik_uhrady
        root << build_element('PriUhrZbyv', data[:pri_uhr_zbyv], data[:pri_uhr_zbyv_attributes]) if data.key? :pri_uhr_zbyv
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('TextPredFa', data[:text_pred_fa], data[:text_pred_fa_attributes]) if data.key? :text_pred_fa
        root << build_element('TextZaFa', data[:text_za_fa], data[:text_za_fa_attributes]) if data.key? :text_za_fa
        root << build_element('TextPredDL', data[:text_pred_dl], data[:text_pred_dl_attributes]) if data.key? :text_pred_dl
        root << build_element('TextZaDL', data[:text_za_dl], data[:text_za_dl_attributes]) if data.key? :text_za_dl
        root << build_element('DateUpom1', data[:date_upom1], data[:date_upom1_attributes]) if data.key? :date_upom1
        root << build_element('DateUpom2', data[:date_upom2], data[:date_upom2_attributes]) if data.key? :date_upom2
        root << build_element('DateUpomL', data[:date_upom_l], data[:date_upom_l_attributes]) if data.key? :date_upom_l
        root << build_element('ValutyProp', data[:valuty_prop], data[:valuty_prop_attributes]) if data.key? :valuty_prop
        root << build_element('SumZaloha', data[:sum_zaloha], data[:sum_zaloha_attributes]) if data.key? :sum_zaloha
        root << build_element('SumZalohaC', data[:sum_zaloha_c], data[:sum_zaloha_c_attributes]) if data.key? :sum_zaloha_c
        if data.key? :dod_odb
          root << DokladFirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :konec_prij
          root << KonecPrijFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end
        root << build_element('TypTransakce', data[:typ_transakce], data[:typ_transakce_attributes]) if data.key? :typ_transakce
        root << build_element('DodaciPodm', data[:dodaci_podm], data[:dodaci_podm_attributes]) if data.key? :dodaci_podm
        root << build_element('DruhDopravy', data[:druh_dopravy], data[:druh_dopravy_attributes]) if data.key? :druh_dopravy
        root << build_element('StOdeslUrc', data[:st_odesl_urc], data[:st_odesl_urc_attributes]) if data.key? :st_odesl_urc
        root << build_element('DopravTuz', data[:doprav_tuz], data[:doprav_tuz_attributes]) if data.key? :doprav_tuz
        root << build_element('DopravZahr', data[:doprav_zahr], data[:doprav_zahr_attributes]) if data.key? :doprav_zahr
        root << build_element('DatumITS', data[:datum_its], data[:datum_its_attributes]) if data.key? :datum_its
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        root << build_element('VyriditNej', data[:vyridit_nej], data[:vyridit_nej_attributes]) if data.key? :vyridit_nej
        root << build_element('Vyridit_do', data[:vyridit_do], data[:vyridit_do_attributes]) if data.key? :vyridit_do
        root << build_element('Vyrizeno', data[:vyrizeno], data[:vyrizeno_attributes]) if data.key? :vyrizeno
        root << build_element('iDokladID', data[:i_doklad_id], data[:i_doklad_id_attributes]) if data.key? :i_doklad_id
        root << build_element('iDoklAgend', data[:i_dokl_agend], data[:i_dokl_agend_attributes]) if data.key? :i_dokl_agend
        if data.key? :import
          root << Import.new('Import', data[:import]).builder
        end
        if data.key? :eshop
          root << Eshop.new('eshop', data[:eshop]).builder
        end
        root << build_element('Pojisteno', data[:pojisteno], data[:pojisteno_attributes]) if data.key? :pojisteno
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