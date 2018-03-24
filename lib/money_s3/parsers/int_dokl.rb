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
        hash = {}

        hash[:doklad] = doklad if raw.key? :Doklad
        hash[:zpusob_uctovani] = zpusob_uctovani if raw.key? :ZpusobUctovani
        hash[:popis] = popis if raw.key? :Popis
        hash[:dat_uc_pr] = dat_uc_pr if raw.key? :DatUcPr
        hash[:dat_pln] = dat_pln if raw.key? :DatPln
        hash[:dat_upl_dph] = dat_upl_dph if raw.key? :DatUplDPH
        hash[:datum_kv] = datum_kv if raw.key? :DatumKV
        hash[:cislo_zapoc] = cislo_zapoc if raw.key? :CisloZapoc
        hash[:prijat_dokl] = prijat_dokl if raw.key? :PrijatDokl
        hash[:var_sym] = var_sym if raw.key? :VarSym
        hash[:par_sym] = par_sym if raw.key? :ParSym
        hash[:pr_kont] = pr_kont if raw.key? :PrKont
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:stred] = stred if raw.key? :Stred
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:vyroba] = vyroba if raw.key? :Vyroba
        hash[:stat_moss] = stat_moss if raw.key? :StatMOSS
        hash[:s_sazba] = s_sazba if raw.key? :SSazba
        hash[:z_sazba] = z_sazba if raw.key? :ZSazba
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:d_rada] = d_rada if raw.key? :DRada
        hash[:d_cislo] = d_cislo if raw.key? :DCislo
        hash[:vyst] = vyst if raw.key? :Vyst
        hash[:rezim] = rezim if raw.key? :Rezim
        hash[:korekce_cen] = korekce_cen if raw.key? :KorekceCen
        hash[:typ_dokl] = typ_dokl if raw.key? :TypDokl
        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:eet] = eet.to_h if raw.key? :EET
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:valuty] = valuty.to_h if raw.key? :Valuty
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:rozuct_polozka] = rozuct_polozka.map(&:to_h) if raw.key? :RozuctPolozka
        hash[:norm_polozka] = norm_polozka.map(&:to_h) if raw.key? :NormPolozka
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end