module MoneyS3
  module Builders
    class MzdaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :zamestnanec
          root << ZamestnanecType.new('Zamestnanec', data[:zamestnanec]).builder
        end
        root << build_element('Mesic', data[:mesic], data[:mesic_attributes]) if data.key? :mesic
        root << build_element('Rok', data[:rok], data[:rok_attributes]) if data.key? :rok
        root << build_element('PracDnu', data[:prac_dnu], data[:prac_dnu_attributes]) if data.key? :prac_dnu
        root << build_element('PracHod', data[:prac_hod], data[:prac_hod_attributes]) if data.key? :prac_hod
        root << build_element('OdprDnu', data[:odpr_dnu], data[:odpr_dnu_attributes]) if data.key? :odpr_dnu
        root << build_element('OdprHod', data[:odpr_hod], data[:odpr_hod_attributes]) if data.key? :odpr_hod
        root << build_element('OdprSvDnu', data[:odpr_sv_dnu], data[:odpr_sv_dnu_attributes]) if data.key? :odpr_sv_dnu
        root << build_element('OdprSvHod', data[:odpr_sv_hod], data[:odpr_sv_hod_attributes]) if data.key? :odpr_sv_hod
        if data.key? :seznam_nepritomnosti
          element = Ox::Element.new('SeznamNepritomnosti')
          data[:seznam_nepritomnosti].each { |i| element << NepritomnostType.new('Nepritomnost', i).builder }
          root << element
        end
        if data.key? :seznam_mz_priplatku
          element = Ox::Element.new('SeznamMzPriplatku')
          data[:seznam_mz_priplatku].each { |i| element << MzPriplatek.new('MzPriplatek', i).builder }
          root << element
        end

        root
      end
    end
  end
end