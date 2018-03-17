require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/moje_firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/norm_poloz_ud_type'
require 'money_s3/parsers/rozuct_poloz_ud_type'

module MoneyS3
  module Parsers
    class PokDokl
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

      def prijat_dokl
        at :PrijatDokl
      end

      def var_sym
        at :VarSym
      end

      def par_sym
        at :ParSym
      end

      def pokl
        at :Pokl
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

      def s_sazba
        at :SSazba
      end

      def z_sazba
        at :ZSazba
      end

      def stat_moss
        at :StatMOSS
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

      def zjedn_d
        at :ZjednD
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

      def moje_firma
        submodel_at(MojeFirmaType, :MojeFirma)
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
          prijat_dokl: prijat_dokl,
          var_sym: var_sym,
          par_sym: par_sym,
          pokl: pokl,
          pr_kont: pr_kont,
          cleneni: cleneni,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          s_sazba: s_sazba,
          z_sazba: z_sazba,
          stat_moss: stat_moss,
          pozn: pozn,
          d_rada: d_rada,
          d_cislo: d_cislo,
          vyst: vyst,
          typ_dokl: typ_dokl,
          zjedn_d: zjedn_d,
          celkem: celkem,
          eet: eet.to_h,
          adresa: adresa.to_h,
          valuty: valuty.to_h,
          moje_firma: moje_firma.to_h,
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