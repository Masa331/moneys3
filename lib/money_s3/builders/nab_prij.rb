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
    class NabPrij
      include BaseBuilder

      attr_accessor :doklad, :popis, :poznamka, :text_pred_po, :text_za_pol, :vystaveno, :vyridit_do, :vyrizeno, :kp_from_odb, :sazba_dph1, :sazba_dph2, :d_rada, :d_cislo, :stredisko, :zakazka, :cinnost, :vystavil, :ne_rezervov, :pevne_ceny, :plat_podm, :doprava, :cas_vystave, :datum_vysta, :nadpis, :vyridit_nej, :zkratka_typ, :prim_doklad, :var_symbol, :ne_vyrizova, :siz_dec_dph, :siz_dec_celk, :zobr_pozn_vy, :stat_moss, :typ_transakce, :dodaci_podm, :druh_dopravy, :st_odesl_urc, :sleva, :pojisteno, :celkem, :dod_odb, :konec_prij, :valuty, :eshop, :prepravce, :typ_zasillky, :prepr_vyplatne, :prepr_uhrada_dobirky, :prepr_trida, :moje_firma, :vlajky, :souhrn_dph, :prepr_seznam_sluzeb, :polozka, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Doklad') << doklad) if doklad
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('TextPredPo') << text_pred_po) if text_pred_po
        root << (Ox::Element.new('TextZaPol') << text_za_pol) if text_za_pol
        root << (Ox::Element.new('Vystaveno') << vystaveno) if vystaveno
        root << (Ox::Element.new('Vyridit_do') << vyridit_do) if vyridit_do
        root << (Ox::Element.new('Vyrizeno') << vyrizeno) if vyrizeno
        root << (Ox::Element.new('KPFromOdb') << kp_from_odb) if kp_from_odb
        root << (Ox::Element.new('SazbaDPH1') << sazba_dph1) if sazba_dph1
        root << (Ox::Element.new('SazbaDPH2') << sazba_dph2) if sazba_dph2
        root << (Ox::Element.new('DRada') << d_rada) if d_rada
        root << (Ox::Element.new('DCislo') << d_cislo) if d_cislo
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Vystavil') << vystavil) if vystavil
        root << (Ox::Element.new('NeRezervov') << ne_rezervov) if ne_rezervov
        root << (Ox::Element.new('PevneCeny') << pevne_ceny) if pevne_ceny
        root << (Ox::Element.new('PlatPodm') << plat_podm) if plat_podm
        root << (Ox::Element.new('Doprava') << doprava) if doprava
        root << (Ox::Element.new('CasVystave') << cas_vystave) if cas_vystave
        root << (Ox::Element.new('DatumVysta') << datum_vysta) if datum_vysta
        root << (Ox::Element.new('Nadpis') << nadpis) if nadpis
        root << (Ox::Element.new('VyriditNej') << vyridit_nej) if vyridit_nej
        root << (Ox::Element.new('ZkratkaTyp') << zkratka_typ) if zkratka_typ
        root << (Ox::Element.new('PrimDoklad') << prim_doklad) if prim_doklad
        root << (Ox::Element.new('VarSymbol') << var_symbol) if var_symbol
        root << (Ox::Element.new('NeVyrizova') << ne_vyrizova) if ne_vyrizova
        root << (Ox::Element.new('SizDecDPH') << siz_dec_dph) if siz_dec_dph
        root << (Ox::Element.new('SizDecCelk') << siz_dec_celk) if siz_dec_celk
        root << (Ox::Element.new('ZobrPoznVy') << zobr_pozn_vy) if zobr_pozn_vy
        root << (Ox::Element.new('StatMOSS') << stat_moss) if stat_moss
        root << (Ox::Element.new('TypTransakce') << typ_transakce) if typ_transakce
        root << (Ox::Element.new('DodaciPodm') << dodaci_podm) if dodaci_podm
        root << (Ox::Element.new('DruhDopravy') << druh_dopravy) if druh_dopravy
        root << (Ox::Element.new('StOdeslUrc') << st_odesl_urc) if st_odesl_urc
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('Pojisteno') << pojisteno) if pojisteno
        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << DokladFirmaType.new(dod_odb, 'DodOdb').builder if dod_odb
        root << KonecPrijFirmaType.new(konec_prij, 'KonecPrij').builder if konec_prij
        root << Valuty.new(valuty, 'Valuty').builder if valuty
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

        if polozka
          polozka.each { |i| root << PolObjednType.new(i, 'Polozka').builder }
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