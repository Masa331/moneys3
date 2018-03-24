require 'money_s3/builders/base_builder'
require 'money_s3/builders/ucty_pohybu_type'

module MoneyS3
  module Builders
    class SkladType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :kod_skladu
          element = Ox::Element.new('KodSkladu')
          element << attributes[:kod_skladu] if attributes[:kod_skladu]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :cenik_sklad
          element = Ox::Element.new('CenikSklad')
          element << attributes[:cenik_sklad] if attributes[:cenik_sklad]
          root << element
        end

        if attributes.key? :platno_od
          element = Ox::Element.new('PlatnoOd')
          element << attributes[:platno_od] if attributes[:platno_od]
          root << element
        end

        if attributes.key? :platno_do
          element = Ox::Element.new('PlatnoDo')
          element << attributes[:platno_do] if attributes[:platno_do]
          root << element
        end

        if attributes.key? :minus
          element = Ox::Element.new('Minus')
          element << attributes[:minus] if attributes[:minus]
          root << element
        end

        if attributes.key? :neupoz
          element = Ox::Element.new('Neupoz')
          element << attributes[:neupoz] if attributes[:neupoz]
          root << element
        end

        if attributes.key? :vyber_cen
          element = Ox::Element.new('Vyber_cen')
          element << attributes[:vyber_cen] if attributes[:vyber_cen]
          root << element
        end

        if attributes.key? :vyber_dod
          element = Ox::Element.new('Vyber_dod')
          element << attributes[:vyber_dod] if attributes[:vyber_dod]
          root << element
        end

        if attributes.key? :zpusob
          element = Ox::Element.new('Zpusob')
          element << attributes[:zpusob] if attributes[:zpusob]
          root << element
        end

        if attributes.key? :prod_ceny_d
          element = Ox::Element.new('ProdCenyD')
          element << attributes[:prod_ceny_d] if attributes[:prod_ceny_d]
          root << element
        end

        if attributes.key? :prepocet
          element = Ox::Element.new('Prepocet')
          element << attributes[:prepocet] if attributes[:prepocet]
          root << element
        end

        if attributes.key? :ceny
          element = Ox::Element.new('Ceny')
          element << attributes[:ceny] if attributes[:ceny]
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