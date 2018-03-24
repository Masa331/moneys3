require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/konec_prij_firma_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/eshop'
require 'money_s3/parsers/prepravce_type'
require 'money_s3/parsers/typ_zasilky_type'
require 'money_s3/parsers/prepr_dopln_udaj_type'
require 'money_s3/parsers/moje_firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/prepr_dopln_udaj_type'
require 'money_s3/parsers/pol_objedn_type'

module MoneyS3
  module Parsers
    class PoptPrij
      include BaseParser

      def doklad
        at :Doklad
      end

      def popis
        at :Popis
      end

      def poznamka
        at :Poznamka
      end

      def text_pred_po
        at :TextPredPo
      end

      def text_za_pol
        at :TextZaPol
      end

      def vystaveno
        at :Vystaveno
      end

      def vyridit_do
        at :Vyridit_do
      end

      def vyrizeno
        at :Vyrizeno
      end

      def kp_from_odb
        at :KPFromOdb
      end

      def sazba_dph1
        at :SazbaDPH1
      end

      def sazba_dph2
        at :SazbaDPH2
      end

      def d_rada
        at :DRada
      end

      def d_cislo
        at :DCislo
      end

      def stredisko
        at :Stredisko
      end

      def zakazka
        at :Zakazka
      end

      def cinnost
        at :Cinnost
      end

      def vystavil
        at :Vystavil
      end

      def ne_rezervov
        at :NeRezervov
      end

      def pevne_ceny
        at :PevneCeny
      end

      def plat_podm
        at :PlatPodm
      end

      def doprava
        at :Doprava
      end

      def cas_vystave
        at :CasVystave
      end

      def datum_vysta
        at :DatumVysta
      end

      def nadpis
        at :Nadpis
      end

      def vyridit_nej
        at :VyriditNej
      end

      def zkratka_typ
        at :ZkratkaTyp
      end

      def prim_doklad
        at :PrimDoklad
      end

      def var_symbol
        at :VarSymbol
      end

      def ne_vyrizova
        at :NeVyrizova
      end

      def siz_dec_dph
        at :SizDecDPH
      end

      def siz_dec_celk
        at :SizDecCelk
      end

      def zobr_pozn_vy
        at :ZobrPoznVy
      end

      def stat_moss
        at :StatMOSS
      end

      def typ_transakce
        at :TypTransakce
      end

      def dodaci_podm
        at :DodaciPodm
      end

      def druh_dopravy
        at :DruhDopravy
      end

      def st_odesl_urc
        at :StOdeslUrc
      end

      def sleva
        at :Sleva
      end

      def pojisteno
        at :Pojisteno
      end

      def celkem
        at :Celkem
      end

      def dod_odb
        submodel_at(DokladFirmaType, :DodOdb)
      end

      def konec_prij
        submodel_at(KonecPrijFirmaType, :KonecPrij)
      end

      def valuty
        submodel_at(Valuty, :Valuty)
      end

      def eshop
        submodel_at(Eshop, :eshop)
      end

      def prepravce
        submodel_at(PrepravceType, :Prepravce)
      end

      def typ_zasillky
        submodel_at(TypZasilkyType, :TypZasillky)
      end

      def prepr_vyplatne
        submodel_at(PreprDoplnUdajType, :Prepr_Vyplatne)
      end

      def prepr_uhrada_dobirky
        submodel_at(PreprDoplnUdajType, :Prepr_UhradaDobirky)
      end

      def prepr_trida
        submodel_at(PreprDoplnUdajType, :Prepr_Trida)
      end

      def moje_firma
        submodel_at(MojeFirmaType, :MojeFirma)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, :SouhrnDPH)
      end

      def prepr_seznam_sluzeb
        array_of_at(PreprDoplnUdajType, [:Prepr_SeznamSluzeb, :Prepr_Sluzba])
      end

      def polozka
        array_of_at(PolObjednType, [:Polozka])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        hash = {}

        hash[:doklad] = doklad if raw.key? :Doklad
        hash[:popis] = popis if raw.key? :Popis
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:text_pred_po] = text_pred_po if raw.key? :TextPredPo
        hash[:text_za_pol] = text_za_pol if raw.key? :TextZaPol
        hash[:vystaveno] = vystaveno if raw.key? :Vystaveno
        hash[:vyridit_do] = vyridit_do if raw.key? :Vyridit_do
        hash[:vyrizeno] = vyrizeno if raw.key? :Vyrizeno
        hash[:kp_from_odb] = kp_from_odb if raw.key? :KPFromOdb
        hash[:sazba_dph1] = sazba_dph1 if raw.key? :SazbaDPH1
        hash[:sazba_dph2] = sazba_dph2 if raw.key? :SazbaDPH2
        hash[:d_rada] = d_rada if raw.key? :DRada
        hash[:d_cislo] = d_cislo if raw.key? :DCislo
        hash[:stredisko] = stredisko if raw.key? :Stredisko
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:vystavil] = vystavil if raw.key? :Vystavil
        hash[:ne_rezervov] = ne_rezervov if raw.key? :NeRezervov
        hash[:pevne_ceny] = pevne_ceny if raw.key? :PevneCeny
        hash[:plat_podm] = plat_podm if raw.key? :PlatPodm
        hash[:doprava] = doprava if raw.key? :Doprava
        hash[:cas_vystave] = cas_vystave if raw.key? :CasVystave
        hash[:datum_vysta] = datum_vysta if raw.key? :DatumVysta
        hash[:nadpis] = nadpis if raw.key? :Nadpis
        hash[:vyridit_nej] = vyridit_nej if raw.key? :VyriditNej
        hash[:zkratka_typ] = zkratka_typ if raw.key? :ZkratkaTyp
        hash[:prim_doklad] = prim_doklad if raw.key? :PrimDoklad
        hash[:var_symbol] = var_symbol if raw.key? :VarSymbol
        hash[:ne_vyrizova] = ne_vyrizova if raw.key? :NeVyrizova
        hash[:siz_dec_dph] = siz_dec_dph if raw.key? :SizDecDPH
        hash[:siz_dec_celk] = siz_dec_celk if raw.key? :SizDecCelk
        hash[:zobr_pozn_vy] = zobr_pozn_vy if raw.key? :ZobrPoznVy
        hash[:stat_moss] = stat_moss if raw.key? :StatMOSS
        hash[:typ_transakce] = typ_transakce if raw.key? :TypTransakce
        hash[:dodaci_podm] = dodaci_podm if raw.key? :DodaciPodm
        hash[:druh_dopravy] = druh_dopravy if raw.key? :DruhDopravy
        hash[:st_odesl_urc] = st_odesl_urc if raw.key? :StOdeslUrc
        hash[:sleva] = sleva if raw.key? :Sleva
        hash[:pojisteno] = pojisteno if raw.key? :Pojisteno
        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:dod_odb] = dod_odb.to_h if raw.key? :DodOdb
        hash[:konec_prij] = konec_prij.to_h if raw.key? :KonecPrij
        hash[:valuty] = valuty.to_h if raw.key? :Valuty
        hash[:eshop] = eshop.to_h if raw.key? :eshop
        hash[:prepravce] = prepravce.to_h if raw.key? :Prepravce
        hash[:typ_zasillky] = typ_zasillky.to_h if raw.key? :TypZasillky
        hash[:prepr_vyplatne] = prepr_vyplatne.to_h if raw.key? :Prepr_Vyplatne
        hash[:prepr_uhrada_dobirky] = prepr_uhrada_dobirky.to_h if raw.key? :Prepr_UhradaDobirky
        hash[:prepr_trida] = prepr_trida.to_h if raw.key? :Prepr_Trida
        hash[:moje_firma] = moje_firma.to_h if raw.key? :MojeFirma
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:prepr_seznam_sluzeb] = prepr_seznam_sluzeb.map(&:to_h) if raw.key? :Prepr_SeznamSluzeb
        hash[:polozka] = polozka.map(&:to_h) if raw.key? :Polozka
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end