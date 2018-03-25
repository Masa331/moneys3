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
        at 'Doklad'
      end

      def ev_cis_dokl
        at 'EvCisDokl'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def d_rada
        at 'DRada'
      end

      def d_cislo
        at 'DCislo'
      end

      def popis
        at 'Popis'
      end

      def c_objed
        at 'CObjed'
      end

      def puv_c_dokl
        at 'PuvCDokl'
      end

      def var_sym
        at 'VarSym'
      end

      def par_sym
        at 'ParSym'
      end

      def kon_sym
        at 'KonSym'
      end

      def spec_sym
        at 'SpecSym'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_vyst
        at 'DatVyst'
      end

      def dat_spl
        at 'DatSpl'
      end

      def dat_pln
        at 'DatPln'
      end

      def doruceno
        at 'Doruceno'
      end

      def dbrpis
        at 'Dbrpis'
      end

      def dobr_duzp
        at 'DobrDUZP'
      end

      def uc_pokl
        at 'UcPokl'
      end

      def pr_kont
        at 'PrKont'
      end

      def cleneni
        at 'Cleneni'
      end

      def stred
        at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def plnen_dph
        at 'PlnenDPH'
      end

      def pozn
        at 'Pozn'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def s_sazba
        at 'SSazba'
      end

      def z_sazba
        at 'ZSazba'
      end

      def uh_zbyva
        at 'UhZbyva'
      end

      def uh_datum
        at 'UhDatum'
      end

      def uh_dokl
        at 'UhDokl'
      end

      def pu_datum
        at 'PUDatum'
      end

      def pu_zbyva
        at 'PUZbyva'
      end

      def valuty_k_uhr
        at 'ValutyKUhr'
      end

      def dat_upom1
        at 'DatUpom1'
      end

      def dat_upom2
        at 'DatUpom2'
      end

      def dat_upom_l
        at 'DatUpomL'
      end

      def typ_dokl
        at 'TypDokl'
      end

      def zjedn_d
        at 'ZjednD'
      end

      def vyst
        at 'Vyst'
      end

      def celkem
        at 'Celkem'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def adresa
        submodel_at(DokladFirmaType, 'Adresa')
      end

      def valuty
        submodel_at(Valuty, 'Valuty')
      end

      def moje_firma
        submodel_at(MojeFirmaType, 'MojeFirma')
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def seznam_rozuct_polozek
        array_of_at(RozuctPolozUDType, ['SeznamRozuctPolozek', 'RozuctPolozka'])
      end

      def seznam_norm_polozek
        array_of_at(NormPolozUDType, ['SeznamNormPolozek', 'NormPolozka'])
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:ev_cis_dokl] = ev_cis_dokl if has? 'EvCisDokl'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:popis] = popis if has? 'Popis'
        hash[:c_objed] = c_objed if has? 'CObjed'
        hash[:puv_c_dokl] = puv_c_dokl if has? 'PuvCDokl'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:kon_sym] = kon_sym if has? 'KonSym'
        hash[:spec_sym] = spec_sym if has? 'SpecSym'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_vyst] = dat_vyst if has? 'DatVyst'
        hash[:dat_spl] = dat_spl if has? 'DatSpl'
        hash[:dat_pln] = dat_pln if has? 'DatPln'
        hash[:doruceno] = doruceno if has? 'Doruceno'
        hash[:dbrpis] = dbrpis if has? 'Dbrpis'
        hash[:dobr_duzp] = dobr_duzp if has? 'DobrDUZP'
        hash[:uc_pokl] = uc_pokl if has? 'UcPokl'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:stred] = stred if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:plnen_dph] = plnen_dph if has? 'PlnenDPH'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:s_sazba] = s_sazba if has? 'SSazba'
        hash[:z_sazba] = z_sazba if has? 'ZSazba'
        hash[:uh_zbyva] = uh_zbyva if has? 'UhZbyva'
        hash[:uh_datum] = uh_datum if has? 'UhDatum'
        hash[:uh_dokl] = uh_dokl if has? 'UhDokl'
        hash[:pu_datum] = pu_datum if has? 'PUDatum'
        hash[:pu_zbyva] = pu_zbyva if has? 'PUZbyva'
        hash[:valuty_k_uhr] = valuty_k_uhr if has? 'ValutyKUhr'
        hash[:dat_upom1] = dat_upom1 if has? 'DatUpom1'
        hash[:dat_upom2] = dat_upom2 if has? 'DatUpom2'
        hash[:dat_upom_l] = dat_upom_l if has? 'DatUpomL'
        hash[:typ_dokl] = typ_dokl if has? 'TypDokl'
        hash[:zjedn_d] = zjedn_d if has? 'ZjednD'
        hash[:vyst] = vyst if has? 'Vyst'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:eet] = eet.to_h if has? 'EET'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:moje_firma] = moje_firma.to_h if has? 'MojeFirma'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:seznam_rozuct_polozek] = seznam_rozuct_polozek.map(&:to_h) if has? 'SeznamRozuctPolozek'
        hash[:seznam_norm_polozek] = seznam_norm_polozek.map(&:to_h) if has? 'SeznamNormPolozek'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end