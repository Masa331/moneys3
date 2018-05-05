module MoneyS3
  module Builders
    class AdresaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Ulice', data[:ulice]) if data.key? :ulice
        root << build_element('Misto', data[:misto]) if data.key? :misto
        root << build_element('PSC', data[:psc]) if data.key? :psc
        root << build_element('Stat', data[:stat]) if data.key? :stat
        root << build_element('KodStatu', data[:kod_statu]) if data.key? :kod_statu

        root
      end
    end
  end
end