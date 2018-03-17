require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'
require 'money_s3/parsers/doklad_firma_type'
require 'money_s3/parsers/valuty'
require 'money_s3/parsers/moje_firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/souhrn_dph_type'
require 'money_s3/parsers/rozuct_poloz_ud_type'
require 'money_s3/parsers/norm_poloz_ud_type'

module MoneyS3
  module Parsers
    class PohledavkaType
      include BaseParser

      def doklad
        at :Doklad
      end

      def ev_cis_dokl
        at :EvCisDokl
      end

      def zpusob_uctovani
        at :ZpusobUctovani
      end

      def d_rada
        at :DRada
      end

      def d_cislo
        at :DCislo
      end

      def popis
        at :Popis
      end

      def c_objed
        at :CObjed
      end

      def puv_c_dokl
        at :PuvCDokl
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

      def dat_uc_pr
        at :DatUcPr
      end

      def dat_vyst
        at :DatVyst
      end

      def dat_spl
        at :DatSpl
      end

      def dat_pln
        at :DatPln
      end

      def doruceno
        at :Doruceno
      end

      def dbrpis
        at :Dbrpis
      end

      def dobr_duzp
        at :DobrDUZP
      end

      def uc_pokl
        at :UcPokl
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

      def plnen_dph
        at :PlnenDPH
      end

      def pozn
        at :Pozn
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

      def uh_zbyva
        at :UhZbyva
      end

      def uh_datum
        at :UhDatum
      end

      def uh_dokl
        at :UhDokl
      end

      def pu_datum
        at :PUDatum
      end

      def pu_zbyva
        at :PUZbyva
      end

      def valuty_k_uhr
        at :ValutyKUhr
      end

      def dat_upom1
        at :DatUpom1
      end

      def dat_upom2
        at :DatUpom2
      end

      def dat_upom_l
        at :DatUpomL
      end

      def typ_dokl
        at :TypDokl
      end

      def zjedn_d
        at :ZjednD
      end

      def vyst
        at :Vyst
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

      def seznam_rozuct_polozek
        array_of_at(RozuctPolozUDType, [:SeznamRozuctPolozek, :RozuctPolozka])
      end

      def seznam_norm_polozek
        array_of_at(NormPolozUDType, [:SeznamNormPolozek, :NormPolozka])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { doklad: doklad,
          ev_cis_dokl: ev_cis_dokl,
          zpusob_uctovani: zpusob_uctovani,
          d_rada: d_rada,
          d_cislo: d_cislo,
          popis: popis,
          c_objed: c_objed,
          puv_c_dokl: puv_c_dokl,
          var_sym: var_sym,
          par_sym: par_sym,
          kon_sym: kon_sym,
          spec_sym: spec_sym,
          dat_uc_pr: dat_uc_pr,
          dat_vyst: dat_vyst,
          dat_spl: dat_spl,
          dat_pln: dat_pln,
          doruceno: doruceno,
          dbrpis: dbrpis,
          dobr_duzp: dobr_duzp,
          uc_pokl: uc_pokl,
          pr_kont: pr_kont,
          cleneni: cleneni,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          plnen_dph: plnen_dph,
          pozn: pozn,
          stat_moss: stat_moss,
          s_sazba: s_sazba,
          z_sazba: z_sazba,
          uh_zbyva: uh_zbyva,
          uh_datum: uh_datum,
          uh_dokl: uh_dokl,
          pu_datum: pu_datum,
          pu_zbyva: pu_zbyva,
          valuty_k_uhr: valuty_k_uhr,
          dat_upom1: dat_upom1,
          dat_upom2: dat_upom2,
          dat_upom_l: dat_upom_l,
          typ_dokl: typ_dokl,
          zjedn_d: zjedn_d,
          vyst: vyst,
          celkem: celkem,
          eet: eet.to_h,
          adresa: adresa.to_h,
          valuty: valuty.to_h,
          moje_firma: moje_firma.to_h,
          vlajky: vlajky.to_h,
          souhrn_dph: souhrn_dph.to_h,
          seznam_rozuct_polozek: seznam_rozuct_polozek.map(&:to_h),
          seznam_norm_polozek: seznam_norm_polozek.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end