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
    class NabPrij
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
        { doklad: doklad,
          popis: popis,
          poznamka: poznamka,
          text_pred_po: text_pred_po,
          text_za_pol: text_za_pol,
          vystaveno: vystaveno,
          vyridit_do: vyridit_do,
          vyrizeno: vyrizeno,
          kp_from_odb: kp_from_odb,
          sazba_dph1: sazba_dph1,
          sazba_dph2: sazba_dph2,
          d_rada: d_rada,
          d_cislo: d_cislo,
          stredisko: stredisko,
          zakazka: zakazka,
          cinnost: cinnost,
          vystavil: vystavil,
          ne_rezervov: ne_rezervov,
          pevne_ceny: pevne_ceny,
          plat_podm: plat_podm,
          doprava: doprava,
          cas_vystave: cas_vystave,
          datum_vysta: datum_vysta,
          nadpis: nadpis,
          vyridit_nej: vyridit_nej,
          zkratka_typ: zkratka_typ,
          prim_doklad: prim_doklad,
          var_symbol: var_symbol,
          ne_vyrizova: ne_vyrizova,
          siz_dec_dph: siz_dec_dph,
          siz_dec_celk: siz_dec_celk,
          zobr_pozn_vy: zobr_pozn_vy,
          stat_moss: stat_moss,
          typ_transakce: typ_transakce,
          dodaci_podm: dodaci_podm,
          druh_dopravy: druh_dopravy,
          st_odesl_urc: st_odesl_urc,
          sleva: sleva,
          pojisteno: pojisteno,
          celkem: celkem,
          dod_odb: dod_odb.to_h,
          konec_prij: konec_prij.to_h,
          valuty: valuty.to_h,
          eshop: eshop.to_h,
          prepravce: prepravce.to_h,
          typ_zasillky: typ_zasillky.to_h,
          prepr_vyplatne: prepr_vyplatne.to_h,
          prepr_uhrada_dobirky: prepr_uhrada_dobirky.to_h,
          prepr_trida: prepr_trida.to_h,
          moje_firma: moje_firma.to_h,
          vlajky: vlajky.to_h,
          souhrn_dph: souhrn_dph.to_h,
          prepr_seznam_sluzeb: prepr_seznam_sluzeb.map(&:to_h),
          polozka: polozka.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end