require 'money_s3/builders/base_builder'
require 'money_s3/builders/konfigurace'
require 'money_s3/builders/definice_ceny'
require 'money_s3/builders/ucty_pohybu_type'

module MoneyS3
  module Builders
    class SkupinaZasobType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkratka
          element = Ox::Element.new('Zkratka')
          element << attributes[:zkratka] if attributes[:zkratka]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :zkratka0
          element = Ox::Element.new('Zkratka0')
          element << attributes[:zkratka0] if attributes[:zkratka0]
          root << element
        end

        if attributes.key? :zkratka1
          element = Ox::Element.new('Zkratka1')
          element << attributes[:zkratka1] if attributes[:zkratka1]
          root << element
        end

        if attributes.key? :zkratka2
          element = Ox::Element.new('Zkratka2')
          element << attributes[:zkratka2] if attributes[:zkratka2]
          root << element
        end

        if attributes.key? :zkratka3
          element = Ox::Element.new('Zkratka3')
          element << attributes[:zkratka3] if attributes[:zkratka3]
          root << element
        end

        if attributes.key? :zkratka4
          element = Ox::Element.new('Zkratka4')
          element << attributes[:zkratka4] if attributes[:zkratka4]
          root << element
        end

        if attributes.key? :zkratka5
          element = Ox::Element.new('Zkratka5')
          element << attributes[:zkratka5] if attributes[:zkratka5]
          root << element
        end

        if attributes.key? :zkratka6
          element = Ox::Element.new('Zkratka6')
          element << attributes[:zkratka6] if attributes[:zkratka6]
          root << element
        end

        if attributes.key? :ceny
          element = Ox::Element.new('Ceny')
          element << attributes[:ceny] if attributes[:ceny]
          root << element
        end

        if attributes.key? :nast_sklad
          element = Ox::Element.new('NastSklad')
          element << attributes[:nast_sklad] if attributes[:nast_sklad]
          root << element
        end

        if attributes.key? :cis_skup_vpl
          element = Ox::Element.new('CisSkupVPL')
          element << attributes[:cis_skup_vpl] if attributes[:cis_skup_vpl]
          root << element
        end

        if attributes.key? :in_cis_odde
          element = Ox::Element.new('IN_CisOdde')
          element << attributes[:in_cis_odde] if attributes[:in_cis_odde]
          root << element
        end

        if attributes.key? :uc_vyrobk_vv
          element = Ox::Element.new('UcVyrobkVV')
          element << attributes[:uc_vyrobk_vv] if attributes[:uc_vyrobk_vv]
          root << element
        end

        if attributes.key? :prodejk_vz
          element = Ox::Element.new('ProdejkVz')
          element << attributes[:prodejk_vz] if attributes[:prodejk_vz]
          root << element
        end

        if attributes.key? :v_dod_lst_vz
          element = Ox::Element.new('VDodLstVz')
          element << attributes[:v_dod_lst_vz] if attributes[:v_dod_lst_vz]
          root << element
        end

        if attributes.key? :p_dod_lst_vz
          element = Ox::Element.new('PDodLstVz')
          element << attributes[:p_dod_lst_vz] if attributes[:p_dod_lst_vz]
          root << element
        end

        if attributes.key? :konfigurace
          root << Konfigurace.new(attributes[:konfigurace], 'konfigurace').builder
        end

        if attributes.key? :definice_ceny
          root << DefiniceCeny.new(attributes[:definice_ceny], 'definiceCeny').builder
        end

        if attributes.key? :uc_pohyb_m
          root << UctyPohybuType.new(attributes[:uc_pohyb_m], 'UcPohybM').builder
        end

        if attributes.key? :uc_pohyb_z
          root << UctyPohybuType.new(attributes[:uc_pohyb_z], 'UcPohybZ').builder
        end

        if attributes.key? :uc_pohyb_v
          root << UctyPohybuType.new(attributes[:uc_pohyb_v], 'UcPohybV').builder
        end

        root
      end
    end
  end
end