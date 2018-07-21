module MoneyS3
  module Builders
    class SklDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('CisloDokla', data[:cislo_dokla], data[:cislo_dokla_attributes]) if data.key? :cislo_dokla
        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani], data[:zpusob_uctovani_attributes]) if data.key? :zpusob_uctovani
        root << build_element('CObjednavk', data[:c_objednavk], data[:c_objednavk_attributes]) if data.key? :c_objednavk
        root << build_element('KPFromOdb', data[:kp_from_odb], data[:kp_from_odb_attributes]) if data.key? :kp_from_odb
        root << build_element('Datum', data[:datum], data[:datum_attributes]) if data.key? :datum
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        root << build_element('DRada', data[:d_rada], data[:d_rada_attributes]) if data.key? :d_rada
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Vystavil', data[:vystavil], data[:vystavil_attributes]) if data.key? :vystavil
        root << build_element('VyrizFaktu', data[:vyriz_faktu], data[:vyriz_faktu_attributes]) if data.key? :vyriz_faktu
        root << build_element('TextPredPo', data[:text_pred_po], data[:text_pred_po_attributes]) if data.key? :text_pred_po
        root << build_element('TextZaPol', data[:text_za_pol], data[:text_za_pol_attributes]) if data.key? :text_za_pol
        root << build_element('Nadpis', data[:nadpis], data[:nadpis_attributes]) if data.key? :nadpis
        root << build_element('ZkratTypuD', data[:zkrat_typu_d], data[:zkrat_typu_d_attributes]) if data.key? :zkrat_typu_d
        root << build_element('PorizCena', data[:poriz_cena], data[:poriz_cena_attributes]) if data.key? :poriz_cena
        root << build_element('PopisX', data[:popis_x], data[:popis_x_attributes]) if data.key? :popis_x
        root << build_element('Fiskal', data[:fiskal], data[:fiskal_attributes]) if data.key? :fiskal
        root << build_element('FisDoklad', data[:fis_doklad], data[:fis_doklad_attributes]) if data.key? :fis_doklad
        root << build_element('DatSkPoh', data[:dat_sk_poh], data[:dat_sk_poh_attributes]) if data.key? :dat_sk_poh
        root << build_element('StatMOSS', data[:stat_moss], data[:stat_moss_attributes]) if data.key? :stat_moss
        root << build_element('SazbaDPH1', data[:sazba_dph1], data[:sazba_dph1_attributes]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2], data[:sazba_dph2_attributes]) if data.key? :sazba_dph2
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('PrimDoklad', data[:prim_doklad], data[:prim_doklad_attributes]) if data.key? :prim_doklad
        root << build_element('VarSymbol', data[:var_symbol], data[:var_symbol_attributes]) if data.key? :var_symbol
        root << build_element('ParSymbol', data[:par_symbol], data[:par_symbol_attributes]) if data.key? :par_symbol
        if data.key? :dod_odb
          root << SkDokladFirmaType.new('DodOdb', data[:dod_odb]).builder
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
        root << build_element('iDokladID', data[:i_doklad_id], data[:i_doklad_id_attributes]) if data.key? :i_doklad_id
        root << build_element('iDoklAgend', data[:i_dokl_agend], data[:i_dokl_agend_attributes]) if data.key? :i_dokl_agend
        if data.key? :import
          root << Import2.new('Import', data[:import]).builder
        end
        if data.key? :sklad_pro_pr
          root << SkladType.new('SkladProPr', data[:sklad_pro_pr]).builder
        end
        if data.key? :polozka
          data[:polozka].each { |i| root << PolSklDoklType.new('Polozka', i).builder }
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