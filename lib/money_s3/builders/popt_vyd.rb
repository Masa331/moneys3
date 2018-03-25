require 'money_s3/builders/base_builder'
require 'money_s3/builders/doklad_firma_type'
require 'money_s3/builders/konec_prij_firma_type'
require 'money_s3/builders/valuty'
require 'money_s3/builders/eshop'
require 'money_s3/builders/prepravce_type'
require 'money_s3/builders/typ_zasilky_type'
require 'money_s3/builders/prepr_dopln_udaj_type'
require 'money_s3/builders/moje_firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/prepr_dopln_udaj_type'
require 'money_s3/builders/pol_objedn_type'

module MoneyS3
  module Builders
    class PoptVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Doklad', data[:doklad]) if data.key? :doklad
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('TextPredPo', data[:text_pred_po]) if data.key? :text_pred_po
        root << build_element('TextZaPol', data[:text_za_pol]) if data.key? :text_za_pol
        root << build_element('Vystaveno', data[:vystaveno]) if data.key? :vystaveno
        root << build_element('Vyridit_do', data[:vyridit_do]) if data.key? :vyridit_do
        root << build_element('Vyrizeno', data[:vyrizeno]) if data.key? :vyrizeno
        root << build_element('KPFromOdb', data[:kp_from_odb]) if data.key? :kp_from_odb
        root << build_element('SazbaDPH1', data[:sazba_dph1]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2]) if data.key? :sazba_dph2
        root << build_element('DRada', data[:d_rada]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo]) if data.key? :d_cislo
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Vystavil', data[:vystavil]) if data.key? :vystavil
        root << build_element('NeRezervov', data[:ne_rezervov]) if data.key? :ne_rezervov
        root << build_element('PevneCeny', data[:pevne_ceny]) if data.key? :pevne_ceny
        root << build_element('PlatPodm', data[:plat_podm]) if data.key? :plat_podm
        root << build_element('Doprava', data[:doprava]) if data.key? :doprava
        root << build_element('CasVystave', data[:cas_vystave]) if data.key? :cas_vystave
        root << build_element('DatumVysta', data[:datum_vysta]) if data.key? :datum_vysta
        root << build_element('Nadpis', data[:nadpis]) if data.key? :nadpis
        root << build_element('VyriditNej', data[:vyridit_nej]) if data.key? :vyridit_nej
        root << build_element('ZkratkaTyp', data[:zkratka_typ]) if data.key? :zkratka_typ
        root << build_element('PrimDoklad', data[:prim_doklad]) if data.key? :prim_doklad
        root << build_element('VarSymbol', data[:var_symbol]) if data.key? :var_symbol
        root << build_element('NeVyrizova', data[:ne_vyrizova]) if data.key? :ne_vyrizova
        root << build_element('SizDecDPH', data[:siz_dec_dph]) if data.key? :siz_dec_dph
        root << build_element('SizDecCelk', data[:siz_dec_celk]) if data.key? :siz_dec_celk
        root << build_element('ZobrPoznVy', data[:zobr_pozn_vy]) if data.key? :zobr_pozn_vy
        root << build_element('StatMOSS', data[:stat_moss]) if data.key? :stat_moss
        root << build_element('TypTransakce', data[:typ_transakce]) if data.key? :typ_transakce
        root << build_element('DodaciPodm', data[:dodaci_podm]) if data.key? :dodaci_podm
        root << build_element('DruhDopravy', data[:druh_dopravy]) if data.key? :druh_dopravy
        root << build_element('StOdeslUrc', data[:st_odesl_urc]) if data.key? :st_odesl_urc
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('Pojisteno', data[:pojisteno]) if data.key? :pojisteno
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem

        if data.key? :dod_odb
          root << DokladFirmaType.new('DodOdb', data[:dod_odb]).builder
        end

        if data.key? :konec_prij
          root << KonecPrijFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end

        if data.key? :valuty
          root << Valuty.new('Valuty', data[:valuty]).builder
        end

        if data.key? :eshop
          root << Eshop.new('eshop', data[:eshop]).builder
        end

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

        if data.key? :moje_firma
          root << MojeFirmaType.new('MojeFirma', data[:moje_firma]).builder
        end

        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end

        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end

        if data.key? :prepr_seznam_sluzeb
          element = Ox::Element.new('Prepr_SeznamSluzeb')
          data[:prepr_seznam_sluzeb].each { |i| element << PreprDoplnUdajType.new('Prepr_Sluzba', i).builder }
          root << element
        end

        if data.key? :polozka
          data[:polozka].each { |i| root << PolObjednType.new('Polozka', i).builder }
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