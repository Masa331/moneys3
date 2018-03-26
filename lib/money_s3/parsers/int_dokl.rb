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
        at 'Doklad'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def popis
        at 'Popis'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_pln
        at 'DatPln'
      end

      def dat_upl_dph
        at 'DatUplDPH'
      end

      def datum_kv
        at 'DatumKV'
      end

      def cislo_zapoc
        at 'CisloZapoc'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def var_sym
        at 'VarSym'
      end

      def par_sym
        at 'ParSym'
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

      def vyroba
        at 'Vyroba'
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

      def pozn
        at 'Pozn'
      end

      def d_rada
        at 'DRada'
      end

      def d_cislo
        at 'DCislo'
      end

      def vyst
        at 'Vyst'
      end

      def rezim
        at 'Rezim'
      end

      def korekce_cen
        at 'KorekceCen'
      end

      def typ_dokl
        at 'TypDokl'
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

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def rozuct_polozka
        array_of_at(RozuctPolozIDType, ['RozuctPolozka'])
      end

      def norm_polozka
        array_of_at(NormPolozIDType, ['NormPolozka'])
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:popis] = popis if has? 'Popis'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_pln] = dat_pln if has? 'DatPln'
        hash[:dat_upl_dph] = dat_upl_dph if has? 'DatUplDPH'
        hash[:datum_kv] = datum_kv if has? 'DatumKV'
        hash[:cislo_zapoc] = cislo_zapoc if has? 'CisloZapoc'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:stred] = stred if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:vyroba] = vyroba if has? 'Vyroba'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:s_sazba] = s_sazba if has? 'SSazba'
        hash[:z_sazba] = z_sazba if has? 'ZSazba'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:vyst] = vyst if has? 'Vyst'
        hash[:rezim] = rezim if has? 'Rezim'
        hash[:korekce_cen] = korekce_cen if has? 'KorekceCen'
        hash[:typ_dokl] = typ_dokl if has? 'TypDokl'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:eet] = eet.to_h_with_attrs if has? 'EET'
        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:valuty] = valuty.to_h_with_attrs if has? 'Valuty'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:rozuct_polozka] = rozuct_polozka.map(&:to_h_with_attrs) if has? 'RozuctPolozka'
        hash[:norm_polozka] = norm_polozka.map(&:to_h_with_attrs) if has? 'NormPolozka'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end