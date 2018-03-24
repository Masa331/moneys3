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
    class PoptPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :doklad
          element = Ox::Element.new('Doklad')
          element << attributes[:doklad] if attributes[:doklad]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :text_pred_po
          element = Ox::Element.new('TextPredPo')
          element << attributes[:text_pred_po] if attributes[:text_pred_po]
          root << element
        end

        if attributes.key? :text_za_pol
          element = Ox::Element.new('TextZaPol')
          element << attributes[:text_za_pol] if attributes[:text_za_pol]
          root << element
        end

        if attributes.key? :vystaveno
          element = Ox::Element.new('Vystaveno')
          element << attributes[:vystaveno] if attributes[:vystaveno]
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

        if attributes.key? :kp_from_odb
          element = Ox::Element.new('KPFromOdb')
          element << attributes[:kp_from_odb] if attributes[:kp_from_odb]
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

        if attributes.key? :d_rada
          element = Ox::Element.new('DRada')
          element << attributes[:d_rada] if attributes[:d_rada]
          root << element
        end

        if attributes.key? :d_cislo
          element = Ox::Element.new('DCislo')
          element << attributes[:d_cislo] if attributes[:d_cislo]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :vystavil
          element = Ox::Element.new('Vystavil')
          element << attributes[:vystavil] if attributes[:vystavil]
          root << element
        end

        if attributes.key? :ne_rezervov
          element = Ox::Element.new('NeRezervov')
          element << attributes[:ne_rezervov] if attributes[:ne_rezervov]
          root << element
        end

        if attributes.key? :pevne_ceny
          element = Ox::Element.new('PevneCeny')
          element << attributes[:pevne_ceny] if attributes[:pevne_ceny]
          root << element
        end

        if attributes.key? :plat_podm
          element = Ox::Element.new('PlatPodm')
          element << attributes[:plat_podm] if attributes[:plat_podm]
          root << element
        end

        if attributes.key? :doprava
          element = Ox::Element.new('Doprava')
          element << attributes[:doprava] if attributes[:doprava]
          root << element
        end

        if attributes.key? :cas_vystave
          element = Ox::Element.new('CasVystave')
          element << attributes[:cas_vystave] if attributes[:cas_vystave]
          root << element
        end

        if attributes.key? :datum_vysta
          element = Ox::Element.new('DatumVysta')
          element << attributes[:datum_vysta] if attributes[:datum_vysta]
          root << element
        end

        if attributes.key? :nadpis
          element = Ox::Element.new('Nadpis')
          element << attributes[:nadpis] if attributes[:nadpis]
          root << element
        end

        if attributes.key? :vyridit_nej
          element = Ox::Element.new('VyriditNej')
          element << attributes[:vyridit_nej] if attributes[:vyridit_nej]
          root << element
        end

        if attributes.key? :zkratka_typ
          element = Ox::Element.new('ZkratkaTyp')
          element << attributes[:zkratka_typ] if attributes[:zkratka_typ]
          root << element
        end

        if attributes.key? :prim_doklad
          element = Ox::Element.new('PrimDoklad')
          element << attributes[:prim_doklad] if attributes[:prim_doklad]
          root << element
        end

        if attributes.key? :var_symbol
          element = Ox::Element.new('VarSymbol')
          element << attributes[:var_symbol] if attributes[:var_symbol]
          root << element
        end

        if attributes.key? :ne_vyrizova
          element = Ox::Element.new('NeVyrizova')
          element << attributes[:ne_vyrizova] if attributes[:ne_vyrizova]
          root << element
        end

        if attributes.key? :siz_dec_dph
          element = Ox::Element.new('SizDecDPH')
          element << attributes[:siz_dec_dph] if attributes[:siz_dec_dph]
          root << element
        end

        if attributes.key? :siz_dec_celk
          element = Ox::Element.new('SizDecCelk')
          element << attributes[:siz_dec_celk] if attributes[:siz_dec_celk]
          root << element
        end

        if attributes.key? :zobr_pozn_vy
          element = Ox::Element.new('ZobrPoznVy')
          element << attributes[:zobr_pozn_vy] if attributes[:zobr_pozn_vy]
          root << element
        end

        if attributes.key? :stat_moss
          element = Ox::Element.new('StatMOSS')
          element << attributes[:stat_moss] if attributes[:stat_moss]
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

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
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

        if attributes.key? :dod_odb
          root << DokladFirmaType.new(attributes[:dod_odb], 'DodOdb').builder
        end

        if attributes.key? :konec_prij
          root << KonecPrijFirmaType.new(attributes[:konec_prij], 'KonecPrij').builder
        end

        if attributes.key? :valuty
          root << Valuty.new(attributes[:valuty], 'Valuty').builder
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

        if attributes.key? :polozka
          attributes[:polozka].each { |i| root << PolObjednType.new(i, 'Polozka').builder }
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