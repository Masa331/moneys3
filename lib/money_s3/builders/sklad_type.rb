module MoneyS3
  module Builders
    class SkladType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('KodSkladu', data[:kod_skladu]) if data.key? :kod_skladu
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('CenikSklad', data[:cenik_sklad]) if data.key? :cenik_sklad
        root << build_element('PlatnoOd', data[:platno_od]) if data.key? :platno_od
        root << build_element('PlatnoDo', data[:platno_do]) if data.key? :platno_do
        root << build_element('Minus', data[:minus]) if data.key? :minus
        root << build_element('Neupoz', data[:neupoz]) if data.key? :neupoz
        root << build_element('Vyber_cen', data[:vyber_cen]) if data.key? :vyber_cen
        root << build_element('Vyber_dod', data[:vyber_dod]) if data.key? :vyber_dod
        root << build_element('Zpusob', data[:zpusob]) if data.key? :zpusob
        root << build_element('ProdCenyD', data[:prod_ceny_d]) if data.key? :prod_ceny_d
        root << build_element('Prepocet', data[:prepocet]) if data.key? :prepocet
        root << build_element('Ceny', data[:ceny]) if data.key? :ceny
        if data.key? :uc_pohyb_m
          root << UctyPohybuType.new('UcPohybM', data[:uc_pohyb_m]).builder
        end
        if data.key? :uc_pohyb_z
          root << UctyPohybuType.new('UcPohybZ', data[:uc_pohyb_z]).builder
        end
        if data.key? :uc_pohyb_v
          root << UctyPohybuType.new('UcPohybV', data[:uc_pohyb_v]).builder
        end
        root << build_element('UcVyrobkVV', data[:uc_vyrobk_vv]) if data.key? :uc_vyrobk_vv
        root << build_element('ProdejkVz', data[:prodejk_vz]) if data.key? :prodejk_vz
        root << build_element('VDodLstVz', data[:v_dod_lst_vz]) if data.key? :v_dod_lst_vz
        root << build_element('PDodLstVz', data[:p_dod_lst_vz]) if data.key? :p_dod_lst_vz

        root
      end
    end
  end
end