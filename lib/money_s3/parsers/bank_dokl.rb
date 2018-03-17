require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/ucet'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/norm_poloz_ud_type'
require 'money_s3/parsers/rozuct_poloz_ud_type'

module MoneyS3
  module Parsers
    class BankDokl
      include BaseParser

      def vydej
        at :Vydej
      end

      def doklad
        at :Doklad
      end

      def ev_cis_dokl
        at :EvCisDokl
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

      def dat_vyst
        at :DatVyst
      end

      def dat_plat
        at :DatPlat
      end

      def dat_pln
        at :DatPln
      end

      def dat_upl_dph
        at :DatUplDPH
      end

      def vypis
        at :Vypis
      end

      def id_polozky
        at :IDPolozky
      end

      def ad_ucet
        at :AdUcet
      end

      def ad_kod
        at :AdKod
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

      def kon_sym
        at :KonSym
      end

      def spec_sym
        at :SpecSym
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

      def typ_dokl
        at :TypDokl
      end

      def celkem
        at :Celkem
      end

      def adresa
        submodel_at(DokladFirmaType, :Adresa)
      end

      def valuty
        submodel_at(Valuty, :Valuty)
      end

      def ucet
        submodel_at(Ucet, :Ucet)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, :SouhrnDPH)
      end

      def seznam_norm_polozek
        array_of_at(NormPolozUDType, [:SeznamNormPolozek, :NormPolozka])
      end

      def seznam_rozuct_polozek
        array_of_at(RozuctPolozUDType, [:SeznamRozuctPolozek, :RozuctPolozka])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { vydej: vydej,
          doklad: doklad,
          ev_cis_dokl: ev_cis_dokl,
          zpusob_uctovani: zpusob_uctovani,
          popis: popis,
          dat_uc_pr: dat_uc_pr,
          dat_vyst: dat_vyst,
          dat_plat: dat_plat,
          dat_pln: dat_pln,
          dat_upl_dph: dat_upl_dph,
          vypis: vypis,
          id_polozky: id_polozky,
          ad_ucet: ad_ucet,
          ad_kod: ad_kod,
          prijat_dokl: prijat_dokl,
          var_sym: var_sym,
          par_sym: par_sym,
          kon_sym: kon_sym,
          spec_sym: spec_sym,
          pr_kont: pr_kont,
          cleneni: cleneni,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          stat_moss: stat_moss,
          s_sazba: s_sazba,
          z_sazba: z_sazba,
          pozn: pozn,
          d_rada: d_rada,
          d_cislo: d_cislo,
          vyst: vyst,
          typ_dokl: typ_dokl,
          celkem: celkem,
          adresa: adresa.to_h,
          valuty: valuty.to_h,
          ucet: ucet.to_h,
          vlajky: vlajky.to_h,
          souhrn_dph: souhrn_dph.to_h,
          seznam_norm_polozek: seznam_norm_polozek.map(&:to_h),
          seznam_rozuct_polozek: seznam_rozuct_polozek.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end