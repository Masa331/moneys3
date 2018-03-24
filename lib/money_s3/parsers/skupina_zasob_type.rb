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
        hash = {}

        hash[:zkratka] = zkratka if raw.key? :Zkratka
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:poznamka] = poznamka if raw.key? :Poznamka
        hash[:zkratka0] = zkratka0 if raw.key? :Zkratka0
        hash[:zkratka1] = zkratka1 if raw.key? :Zkratka1
        hash[:zkratka2] = zkratka2 if raw.key? :Zkratka2
        hash[:zkratka3] = zkratka3 if raw.key? :Zkratka3
        hash[:zkratka4] = zkratka4 if raw.key? :Zkratka4
        hash[:zkratka5] = zkratka5 if raw.key? :Zkratka5
        hash[:zkratka6] = zkratka6 if raw.key? :Zkratka6
        hash[:ceny] = ceny if raw.key? :Ceny
        hash[:nast_sklad] = nast_sklad if raw.key? :NastSklad
        hash[:cis_skup_vpl] = cis_skup_vpl if raw.key? :CisSkupVPL
        hash[:in_cis_odde] = in_cis_odde if raw.key? :IN_CisOdde
        hash[:uc_vyrobk_vv] = uc_vyrobk_vv if raw.key? :UcVyrobkVV
        hash[:prodejk_vz] = prodejk_vz if raw.key? :ProdejkVz
        hash[:v_dod_lst_vz] = v_dod_lst_vz if raw.key? :VDodLstVz
        hash[:p_dod_lst_vz] = p_dod_lst_vz if raw.key? :PDodLstVz
        hash[:konfigurace] = konfigurace.to_h if raw.key? :konfigurace
        hash[:definice_ceny] = definice_ceny.to_h if raw.key? :definiceCeny
        hash[:uc_pohyb_m] = uc_pohyb_m.to_h if raw.key? :UcPohybM
        hash[:uc_pohyb_z] = uc_pohyb_z.to_h if raw.key? :UcPohybZ
        hash[:uc_pohyb_v] = uc_pohyb_v.to_h if raw.key? :UcPohybV

        hash
      end
    end
  end
end