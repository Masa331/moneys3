require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/rozuct_poloz_id_type'
require 'money_s3/parsers/norm_poloz_id_type'

module MoneyS3
  module Parsers
    class IntDokl
      include BaseParser

      def doklad
        at :Doklad
      end

      def zpusob_uctovani
        at :ZpusobUctovani
      end

      def popis
        at :Popis
      end

      def dat_uc_pr
        at :DatUcPr
      end

      def dat_pln
        at :DatPln
      end

      def dat_upl_dph
        at :DatUplDPH
      end

      def datum_kv
        at :DatumKV
      end

      def cislo_zapoc
        at :CisloZapoc
      end

      def prijat_dokl
        at :PrijatDokl
      end

      def var_sym
        at :VarSym
      end

      def par_sym
        at :ParSym
      end

      def pr_kont
        at :PrKont
      end

      def cleneni
        at :Cleneni
      end

      def stred
        at :Stred
      end

      def zakazka
        at :Zakazka
      end

      def cinnost
        at :Cinnost
      end

      def vyroba
        at :Vyroba
      end

      def stat_moss
        at :StatMOSS
      end

      def s_sazba
        at :SSazba
      end

      def z_sazba
        at :ZSazba
      end

      def pozn
        at :Pozn
      end

      def d_rada
        at :DRada
      end

      def d_cislo
        at :DCislo
      end

      def vyst
        at :Vyst
      end

      def rezim
        at :Rezim
      end

      def korekce_cen
        at :KorekceCen
      end

      def typ_dokl
        at :TypDokl
      end

      def celkem
        at :Celkem
      end

      def eet
        submodel_at(EETType, :EET)
      end

      def adresa
        submodel_at(DokladFirmaType, :Adresa)
      end

      def valuty
        submodel_at(Valuty, :Valuty)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, :SouhrnDPH)
      end

      def rozuct_polozka
        array_of_at(RozuctPolozIDType, [:RozuctPolozka])
      end

      def norm_polozka
        array_of_at(NormPolozIDType, [:NormPolozka])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { doklad: doklad,
          zpusob_uctovani: zpusob_uctovani,
          popis: popis,
          dat_uc_pr: dat_uc_pr,
          dat_pln: dat_pln,
          dat_upl_dph: dat_upl_dph,
          datum_kv: datum_kv,
          cislo_zapoc: cislo_zapoc,
          prijat_dokl: prijat_dokl,
          var_sym: var_sym,
          par_sym: par_sym,
          pr_kont: pr_kont,
          cleneni: cleneni,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          vyroba: vyroba,
          stat_moss: stat_moss,
          s_sazba: s_sazba,
          z_sazba: z_sazba,
          pozn: pozn,
          d_rada: d_rada,
          d_cislo: d_cislo,
          vyst: vyst,
          rezim: rezim,
          korekce_cen: korekce_cen,
          typ_dokl: typ_dokl,
          celkem: celkem,
          eet: eet.to_h,
          adresa: adresa.to_h,
          valuty: valuty.to_h,
          vlajky: vlajky.to_h,
          souhrn_dph: souhrn_dph.to_h,
          rozuct_polozka: rozuct_polozka.map(&:to_h),
          norm_polozka: norm_polozka.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end