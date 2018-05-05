module MoneyS3
  module Builders
    class NepPlatbaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :platidlo
          root << NepPlatidloType.new('Platidlo', data[:platidlo]).builder
        end
        root << build_element('MnozstviMJ', data[:mnozstvi_mj]) if data.key? :mnozstvi_mj
        root << build_element('Castka', data[:castka]) if data.key? :castka

        root
      end
    end
  end
end