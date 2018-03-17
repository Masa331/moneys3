require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/sk_doklad_firma_type'
require 'money_s3/parsers/konec_prij_firma_type'
require 'money_s3/parsers/import'
require 'money_s3/parsers/sklad_type'
require 'money_s3/parsers/moje_firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/pol_skl_dokl_type'
require 'money_s3/parsers/nep_platba_type'

module MoneyS3
  module Parsers
    class DLVyd
      include BaseParser

      def cislo_dokla
        at :CisloDokla
      end

      def zpusob_uctovani
        at :ZpusobUctovani
      end

      def c_objednavk
        at :CObjednavk
      end

      def kp_from_odb
        at :KPFromOdb
      end

      def datum
        at :Datum
      end

      def sleva
        at :Sleva
      end

      def d_rada
        at :DRada
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

      def popis
        at :Popis
      end

      def vystavil
        at :Vystavil
      end

      def vyriz_faktu
        at :VyrizFaktu
      end

      def text_pred_po
        at :TextPredPo
      end

      def text_za_pol
        at :TextZaPol
      end

      def nadpis
        at :Nadpis
      end

      def zkrat_typu_d
        at :ZkratTypuD
      end

      def poriz_cena
        at :PorizCena
      end

      def popis_x
        at :PopisX
      end

      def fiskal
        at :Fiskal
      end

      def fis_doklad
        at :FisDoklad
      end

      def dat_sk_poh
        at :DatSkPoh
      end

      def stat_moss
        at :StatMOSS
      end

      def sazba_dph1
        at :SazbaDPH1
      end

      def sazba_dph2
        at :SazbaDPH2
      end

      def prim_doklad
        at :PrimDoklad
      end

      def var_symbol
        at :VarSymbol
      end

      def par_symbol
        at :ParSymbol
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

      def doprav_tuz
        at :DopravTuz
      end

      def doprav_zahr
        at :DopravZahr
      end

      def datum_its
        at :DatumITS
      end

      def sleva
        at :Sleva
      end

      def i_doklad_id
        at :iDokladID
      end

      def i_dokl_agend
        at :iDoklAgend
      end

      def celkem
        at :Celkem
      end

      def eet
        submodel_at(EETType, :EET)
      end

      def valuty
        submodel_at(Valuty, :Valuty)
      end

      def dod_odb
        submodel_at(SkDokladFirmaType, :DodOdb)
      end

      def konec_prij
        submodel_at(KonecPrijFirmaType, :KonecPrij)
      end

      def import
        submodel_at(Import, :Import)
      end

      def sklad_pro_pr
        submodel_at(SkladType, :SkladProPr)
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

      def polozka
        array_of_at(PolSklDoklType, [:Polozka])
      end

      def seznam_nep_plateb
        array_of_at(NepPlatbaType, [:SeznamNepPlateb, :NepPlatba])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { cislo_dokla: cislo_dokla,
          zpusob_uctovani: zpusob_uctovani,
          c_objednavk: c_objednavk,
          kp_from_odb: kp_from_odb,
          datum: datum,
          sleva: sleva,
          d_rada: d_rada,
          stredisko: stredisko,
          zakazka: zakazka,
          cinnost: cinnost,
          popis: popis,
          vystavil: vystavil,
          vyriz_faktu: vyriz_faktu,
          text_pred_po: text_pred_po,
          text_za_pol: text_za_pol,
          nadpis: nadpis,
          zkrat_typu_d: zkrat_typu_d,
          poriz_cena: poriz_cena,
          popis_x: popis_x,
          fiskal: fiskal,
          fis_doklad: fis_doklad,
          dat_sk_poh: dat_sk_poh,
          stat_moss: stat_moss,
          sazba_dph1: sazba_dph1,
          sazba_dph2: sazba_dph2,
          prim_doklad: prim_doklad,
          var_symbol: var_symbol,
          par_symbol: par_symbol,
          typ_transakce: typ_transakce,
          dodaci_podm: dodaci_podm,
          druh_dopravy: druh_dopravy,
          st_odesl_urc: st_odesl_urc,
          doprav_tuz: doprav_tuz,
          doprav_zahr: doprav_zahr,
          datum_its: datum_its,
          sleva: sleva,
          i_doklad_id: i_doklad_id,
          i_dokl_agend: i_dokl_agend,
          celkem: celkem,
          eet: eet.to_h,
          valuty: valuty.to_h,
          dod_odb: dod_odb.to_h,
          konec_prij: konec_prij.to_h,
          import: import.to_h,
          sklad_pro_pr: sklad_pro_pr.to_h,
          moje_firma: moje_firma.to_h,
          vlajky: vlajky.to_h,
          souhrn_dph: souhrn_dph.to_h,
          polozka: polozka.map(&:to_h),
          seznam_nep_plateb: seznam_nep_plateb.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end