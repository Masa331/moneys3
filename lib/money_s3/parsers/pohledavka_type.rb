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
        hash = {}

        hash[:doklad] = doklad if raw.key? :Doklad
        hash[:ev_cis_dokl] = ev_cis_dokl if raw.key? :EvCisDokl
        hash[:zpusob_uctovani] = zpusob_uctovani if raw.key? :ZpusobUctovani
        hash[:d_rada] = d_rada if raw.key? :DRada
        hash[:d_cislo] = d_cislo if raw.key? :DCislo
        hash[:popis] = popis if raw.key? :Popis
        hash[:c_objed] = c_objed if raw.key? :CObjed
        hash[:puv_c_dokl] = puv_c_dokl if raw.key? :PuvCDokl
        hash[:var_sym] = var_sym if raw.key? :VarSym
        hash[:par_sym] = par_sym if raw.key? :ParSym
        hash[:kon_sym] = kon_sym if raw.key? :KonSym
        hash[:spec_sym] = spec_sym if raw.key? :SpecSym
        hash[:dat_uc_pr] = dat_uc_pr if raw.key? :DatUcPr
        hash[:dat_vyst] = dat_vyst if raw.key? :DatVyst
        hash[:dat_spl] = dat_spl if raw.key? :DatSpl
        hash[:dat_pln] = dat_pln if raw.key? :DatPln
        hash[:doruceno] = doruceno if raw.key? :Doruceno
        hash[:dbrpis] = dbrpis if raw.key? :Dbrpis
        hash[:dobr_duzp] = dobr_duzp if raw.key? :DobrDUZP
        hash[:uc_pokl] = uc_pokl if raw.key? :UcPokl
        hash[:pr_kont] = pr_kont if raw.key? :PrKont
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:stred] = stred if raw.key? :Stred
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:plnen_dph] = plnen_dph if raw.key? :PlnenDPH
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:stat_moss] = stat_moss if raw.key? :StatMOSS
        hash[:s_sazba] = s_sazba if raw.key? :SSazba
        hash[:z_sazba] = z_sazba if raw.key? :ZSazba
        hash[:uh_zbyva] = uh_zbyva if raw.key? :UhZbyva
        hash[:uh_datum] = uh_datum if raw.key? :UhDatum
        hash[:uh_dokl] = uh_dokl if raw.key? :UhDokl
        hash[:pu_datum] = pu_datum if raw.key? :PUDatum
        hash[:pu_zbyva] = pu_zbyva if raw.key? :PUZbyva
        hash[:valuty_k_uhr] = valuty_k_uhr if raw.key? :ValutyKUhr
        hash[:dat_upom1] = dat_upom1 if raw.key? :DatUpom1
        hash[:dat_upom2] = dat_upom2 if raw.key? :DatUpom2
        hash[:dat_upom_l] = dat_upom_l if raw.key? :DatUpomL
        hash[:typ_dokl] = typ_dokl if raw.key? :TypDokl
        hash[:zjedn_d] = zjedn_d if raw.key? :ZjednD
        hash[:vyst] = vyst if raw.key? :Vyst
        hash[:celkem] = celkem if raw.key? :Celkem
        hash[:eet] = eet.to_h if raw.key? :EET
        hash[:adresa] = adresa.to_h if raw.key? :Adresa
        hash[:valuty] = valuty.to_h if raw.key? :Valuty
        hash[:moje_firma] = moje_firma.to_h if raw.key? :MojeFirma
        hash[:vlajky] = vlajky.to_h if raw.key? :Vlajky
        hash[:souhrn_dph] = souhrn_dph.to_h if raw.key? :SouhrnDPH
        hash[:seznam_rozuct_polozek] = seznam_rozuct_polozek.map(&:to_h) if raw.key? :SeznamRozuctPolozek
        hash[:seznam_norm_polozek] = seznam_norm_polozek.map(&:to_h) if raw.key? :SeznamNormPolozek
        hash[:dokumenty] = dokumenty if raw.key? :Dokumenty

        hash
      end
    end
  end
end