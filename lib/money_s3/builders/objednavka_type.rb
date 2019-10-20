module MoneyS3
  module Builders
    class ObjednavkaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Doklad', data[:doklad], data[:doklad_attributes]) if data.key? :doklad
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('TextPredPo', data[:text_pred_po], data[:text_pred_po_attributes]) if data.key? :text_pred_po
        root << build_element('TextZaPol', data[:text_za_pol], data[:text_za_pol_attributes]) if data.key? :text_za_pol
        root << build_element('Vystaveno', data[:vystaveno], data[:vystaveno_attributes]) if data.key? :vystaveno
        root << build_element('Vyridit_do', data[:vyridit_do], data[:vyridit_do_attributes]) if data.key? :vyridit_do
        root << build_element('Vyrizeno', data[:vyrizeno], data[:vyrizeno_attributes]) if data.key? :vyrizeno
        if data.key? :dod_odb
          root << DokladFirmaType.new('DodOdb', data[:dod_odb]).builder
        end
        if data.key? :konec_prij
          root << KonecPrijFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end
        root << build_element('KPFromOdb', data[:kp_from_odb], data[:kp_from_odb_attributes]) if data.key? :kp_from_odb
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem
        root << build_element('DRada', data[:d_rada], data[:d_rada_attributes]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo], data[:d_cislo_attributes]) if data.key? :d_cislo
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Vystavil', data[:vystavil], data[:vystavil_attributes]) if data.key? :vystavil
        root << build_element('NeRezervov', data[:ne_rezervov], data[:ne_rezervov_attributes]) if data.key? :ne_rezervov
        root << build_element('PevneCeny', data[:pevne_ceny], data[:pevne_ceny_attributes]) if data.key? :pevne_ceny
        root << build_element('PlatPodm', data[:plat_podm], data[:plat_podm_attributes]) if data.key? :plat_podm
        root << build_element('Doprava', data[:doprava], data[:doprava_attributes]) if data.key? :doprava
        root << build_element('CasVystave', data[:cas_vystave], data[:cas_vystave_attributes]) if data.key? :cas_vystave
        root << build_element('DatumVysta', data[:datum_vysta], data[:datum_vysta_attributes]) if data.key? :datum_vysta
        root << build_element('Nadpis', data[:nadpis], data[:nadpis_attributes]) if data.key? :nadpis
        root << build_element('VyriditNej', data[:vyridit_nej], data[:vyridit_nej_attributes]) if data.key? :vyridit_nej
        root << build_element('ZkratkaTyp', data[:zkratka_typ], data[:zkratka_typ_attributes]) if data.key? :zkratka_typ
        root << build_element('PrimDoklad', data[:prim_doklad], data[:prim_doklad_attributes]) if data.key? :prim_doklad
        root << build_element('VarSymbol', data[:var_symbol], data[:var_symbol_attributes]) if data.key? :var_symbol
        root << build_element('NeVyrizova', data[:ne_vyrizova], data[:ne_vyrizova_attributes]) if data.key? :ne_vyrizova
        root << build_element('SizDecDPH', data[:siz_dec_dph], data[:siz_dec_dph_attributes]) if data.key? :siz_dec_dph
        root << build_element('SizDecCelk', data[:siz_dec_celk], data[:siz_dec_celk_attributes]) if data.key? :siz_dec_celk
        root << build_element('ZobrPoznVy', data[:zobr_pozn_vy], data[:zobr_pozn_vy_attributes]) if data.key? :zobr_pozn_vy
        root << build_element('StatMOSS', data[:stat_moss], data[:stat_moss_attributes]) if data.key? :stat_moss
        root << build_element('TypTransakce', data[:typ_transakce], data[:typ_transakce_attributes]) if data.key? :typ_transakce
        root << build_element('DodaciPodm', data[:dodaci_podm], data[:dodaci_podm_attributes]) if data.key? :dodaci_podm
        root << build_element('DruhDopravy', data[:druh_dopravy], data[:druh_dopravy_attributes]) if data.key? :druh_dopravy
        root << build_element('StOdeslUrc', data[:st_odesl_urc], data[:st_odesl_urc_attributes]) if data.key? :st_odesl_urc
        if data.key? :valuty
          root << Valuty2.new('Valuty', data[:valuty]).builder
        end
        root << build_element('ZpVypDPH', data[:zp_vyp_dph], data[:zp_vyp_dph_attributes]) if data.key? :zp_vyp_dph
        root << build_element('SazbaDPH1', data[:sazba_dph1], data[:sazba_dph1_attributes]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2], data[:sazba_dph2_attributes]) if data.key? :sazba_dph2
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva
        if data.key? :eshop
          root << Eshop3.new('eshop', data[:eshop]).builder
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
        if data.key? :polozka
          data[:polozka].each { |i| root << PolObjednType.new('Polozka', i).builder }
        end
        if data.key? :moje_firma
          root << MojeFirmaType.new('MojeFirma', data[:moje_firma]).builder
        end
        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end
        root << build_element('UzivatelskaPole', data[:uzivatelska_pole], data[:uzivatelska_pole_attributes]) if data.key? :uzivatelska_pole

        root
      end
    end
  end
end