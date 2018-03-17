require 'money_s3/builders/base_builder'
require 'money_s3/builders/konfigurace'
require 'money_s3/builders/definice_ceny'
require 'money_s3/builders/ucty_pohybu_type'

module MoneyS3
  module Builders
    class SkupinaZasobType
      include BaseBuilder

      attr_accessor :zkratka, :nazev, :poznamka, :zkratka0, :zkratka1, :zkratka2, :zkratka3, :zkratka4, :zkratka5, :zkratka6, :ceny, :nast_sklad, :cis_skup_vpl, :in_cis_odde, :uc_vyrobk_vv, :prodejk_vz, :v_dod_lst_vz, :p_dod_lst_vz, :konfigurace, :definice_ceny, :uc_pohyb_m, :uc_pohyb_z, :uc_pohyb_v

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkratka') << zkratka) if zkratka
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('Zkratka0') << zkratka0) if zkratka0
        root << (Ox::Element.new('Zkratka1') << zkratka1) if zkratka1
        root << (Ox::Element.new('Zkratka2') << zkratka2) if zkratka2
        root << (Ox::Element.new('Zkratka3') << zkratka3) if zkratka3
        root << (Ox::Element.new('Zkratka4') << zkratka4) if zkratka4
        root << (Ox::Element.new('Zkratka5') << zkratka5) if zkratka5
        root << (Ox::Element.new('Zkratka6') << zkratka6) if zkratka6
        root << (Ox::Element.new('Ceny') << ceny) if ceny
        root << (Ox::Element.new('NastSklad') << nast_sklad) if nast_sklad
        root << (Ox::Element.new('CisSkupVPL') << cis_skup_vpl) if cis_skup_vpl
        root << (Ox::Element.new('IN_CisOdde') << in_cis_odde) if in_cis_odde
        root << (Ox::Element.new('UcVyrobkVV') << uc_vyrobk_vv) if uc_vyrobk_vv
        root << (Ox::Element.new('ProdejkVz') << prodejk_vz) if prodejk_vz
        root << (Ox::Element.new('VDodLstVz') << v_dod_lst_vz) if v_dod_lst_vz
        root << (Ox::Element.new('PDodLstVz') << p_dod_lst_vz) if p_dod_lst_vz
        root << Konfigurace.new(konfigurace, 'konfigurace').builder if konfigurace
        root << DefiniceCeny.new(definice_ceny, 'definiceCeny').builder if definice_ceny
        root << UctyPohybuType.new(uc_pohyb_m, 'UcPohybM').builder if uc_pohyb_m
        root << UctyPohybuType.new(uc_pohyb_z, 'UcPohybZ').builder if uc_pohyb_z
        root << UctyPohybuType.new(uc_pohyb_v, 'UcPohybV').builder if uc_pohyb_v

        root
      end
    end
  end
end