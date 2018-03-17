require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/konfigurace'
require 'money_s3/parsers/definice_ceny'
require 'money_s3/parsers/ucty_pohybu_type'

module MoneyS3
  module Parsers
    class SkupinaZasobType
      include BaseParser

      def zkratka
        at :Zkratka
      end

      def nazev
        at :Nazev
      end

      def poznamka
        at :Poznamka
      end

      def zkratka0
        at :Zkratka0
      end

      def zkratka1
        at :Zkratka1
      end

      def zkratka2
        at :Zkratka2
      end

      def zkratka3
        at :Zkratka3
      end

      def zkratka4
        at :Zkratka4
      end

      def zkratka5
        at :Zkratka5
      end

      def zkratka6
        at :Zkratka6
      end

      def ceny
        at :Ceny
      end

      def nast_sklad
        at :NastSklad
      end

      def cis_skup_vpl
        at :CisSkupVPL
      end

      def in_cis_odde
        at :IN_CisOdde
      end

      def uc_vyrobk_vv
        at :UcVyrobkVV
      end

      def prodejk_vz
        at :ProdejkVz
      end

      def v_dod_lst_vz
        at :VDodLstVz
      end

      def p_dod_lst_vz
        at :PDodLstVz
      end

      def konfigurace
        submodel_at(Konfigurace, :konfigurace)
      end

      def definice_ceny
        submodel_at(DefiniceCeny, :definiceCeny)
      end

      def uc_pohyb_m
        submodel_at(UctyPohybuType, :UcPohybM)
      end

      def uc_pohyb_z
        submodel_at(UctyPohybuType, :UcPohybZ)
      end

      def uc_pohyb_v
        submodel_at(UctyPohybuType, :UcPohybV)
      end

      def to_h
        { zkratka: zkratka,
          nazev: nazev,
          poznamka: poznamka,
          zkratka0: zkratka0,
          zkratka1: zkratka1,
          zkratka2: zkratka2,
          zkratka3: zkratka3,
          zkratka4: zkratka4,
          zkratka5: zkratka5,
          zkratka6: zkratka6,
          ceny: ceny,
          nast_sklad: nast_sklad,
          cis_skup_vpl: cis_skup_vpl,
          in_cis_odde: in_cis_odde,
          uc_vyrobk_vv: uc_vyrobk_vv,
          prodejk_vz: prodejk_vz,
          v_dod_lst_vz: v_dod_lst_vz,
          p_dod_lst_vz: p_dod_lst_vz,
          konfigurace: konfigurace.to_h,
          definice_ceny: definice_ceny.to_h,
          uc_pohyb_m: uc_pohyb_m.to_h,
          uc_pohyb_z: uc_pohyb_z.to_h,
          uc_pohyb_v: uc_pohyb_v.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end