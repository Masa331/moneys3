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
        hash = {}

        hash[:vydej] = vydej if raw.key? :Vydej
        hash[:doklad] = doklad if raw.key? :Doklad
        hash[:ev_cis_dokl] = ev_cis_dokl if raw.key? :EvCisDokl
        hash[:zpusob_uctovani] = zpusob_uctovani if raw.key? :ZpusobUctovani
        hash[:popis] = popis if raw.key? :Popis
        hash[:dat_uc_pr] = dat_uc_pr if raw.key? :DatUcPr
        hash[:dat_vyst] = dat_vyst if raw.key? :DatVyst
        hash[:dat_plat] = dat_plat if raw.key? :DatPlat
        hash[:dat_pln] = dat_pln if raw.key? :DatPln
        hash[:dat_upl_dph] = dat_upl_dph if raw.key? :DatUplDPH
        hash[:prijat_dokl] = prijat_dokl if raw.key? :PrijatDokl
        hash[:var_sym] = var_sym if raw.key? :VarSym
        hash[:par_sym] = par_sym if raw.key? :ParSym
        hash[:pokl] = pokl if raw.key? :Pokl
        hash[:pr_kont] = pr_kont if raw.key? :PrKont
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:stred] = stred if raw.key? :Stred
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:s_sazba] = s_sazba if raw.key? :SSazba
        hash[:z_sazba] = z_sazba if raw.key? :ZSazba
        hash[:stat_moss] = stat_moss if raw.key? :StatMOSS
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:d_rada] = d_rada if raw.key? :DRada
        hash[:d_cislo] = d_cislo if raw.key? :DCislo
        hash[:vyst] = vyst if raw.key? :Vyst
        hash[:typ_dokl] = typ_dokl if raw.key? :TypDokl
        hash[:zjedn_d] = zjedn_d if raw.key? :ZjednD
        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:eet] = eet.to_h if raw.key? :EET
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:valuty] = valuty.to_h if raw.key? :Valuty
        hash[:moje_firma] = moje_firma.to_h if raw.key? :MojeFirma
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:seznam_norm_polozek] = seznam_norm_polozek.map(&:to_h) if raw.key? :SeznamNormPolozek
        hash[:seznam_rozuct_polozek] = seznam_rozuct_polozek.map(&:to_h) if raw.key? :SeznamRozuctPolozek
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end