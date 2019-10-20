module MoneyS3
  module Builders
    class AdresaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Ulice', data[:ulice], data[:ulice_attributes]) if data.key? :ulice
        root << build_element('Misto', data[:misto], data[:misto_attributes]) if data.key? :misto
        root << build_element('PSC', data[:psc], data[:psc_attributes]) if data.key? :psc
        root << build_element('Stat', data[:stat], data[:stat_attributes]) if data.key? :stat
        root << build_element('KodStatu', data[:kod_statu], data[:kod_statu_attributes]) if data.key? :kod_statu

        root
      end
    end
  end
end