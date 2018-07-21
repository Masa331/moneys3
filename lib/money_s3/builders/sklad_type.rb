module MoneyS3
  module Builders
    class SkladType
      include ParserCore::BaseBuilder
      include Groups::Konfigurace
      include Groups::DefiniceCeny

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('KodSkladu', data[:kod_skladu], data[:kod_skladu_attributes]) if data.key? :kod_skladu
        root << build_element('GUID', data[:guid], data[:guid_attributes]) if data.key? :guid
        root << build_element('CenikSklad', data[:cenik_sklad], data[:cenik_sklad_attributes]) if data.key? :cenik_sklad
        root << build_element('PlatnoOd', data[:platno_od], data[:platno_od_attributes]) if data.key? :platno_od
        root << build_element('PlatnoDo', data[:platno_do], data[:platno_do_attributes]) if data.key? :platno_do
        root << build_element('Minus', data[:minus], data[:minus_attributes]) if data.key? :minus
        root << build_element('Neupoz', data[:neupoz], data[:neupoz_attributes]) if data.key? :neupoz
        root << build_element('Vyber_cen', data[:vyber_cen], data[:vyber_cen_attributes]) if data.key? :vyber_cen
        root << build_element('Vyber_dod', data[:vyber_dod], data[:vyber_dod_attributes]) if data.key? :vyber_dod
        root << build_element('Zpusob', data[:zpusob], data[:zpusob_attributes]) if data.key? :zpusob
        root << build_element('ProdCenyD', data[:prod_ceny_d], data[:prod_ceny_d_attributes]) if data.key? :prod_ceny_d
        root << build_element('Prepocet', data[:prepocet], data[:prepocet_attributes]) if data.key? :prepocet
        root << build_element('Ceny', data[:ceny], data[:ceny_attributes]) if data.key? :ceny
        if data.key? :uc_pohyb_m
          root << UctyPohybuType.new('UcPohybM', data[:uc_pohyb_m]).builder
        end
        if data.key? :uc_pohyb_z
          root << UctyPohybuType.new('UcPohybZ', data[:uc_pohyb_z]).builder
        end
        if data.key? :uc_pohyb_v
          root << UctyPohybuType.new('UcPohybV', data[:uc_pohyb_v]).builder
        end
        root << build_element('UcVyrobkVV', data[:uc_vyrobk_vv], data[:uc_vyrobk_vv_attributes]) if data.key? :uc_vyrobk_vv
        root << build_element('ProdejkVz', data[:prodejk_vz], data[:prodejk_vz_attributes]) if data.key? :prodejk_vz
        root << build_element('VDodLstVz', data[:v_dod_lst_vz], data[:v_dod_lst_vz_attributes]) if data.key? :v_dod_lst_vz
        root << build_element('PDodLstVz', data[:p_dod_lst_vz], data[:p_dod_lst_vz_attributes]) if data.key? :p_dod_lst_vz

        mega.each do |r|
          r.nodes.each { |n| root << n }
        end

        root
      end
    end
  end
end