module MoneyS3
  module Builders
    class Data6
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :zauctovani_dph_de
          root << ZauctovaniDPHDetype.new('ZauctovaniDPH_DE', data[:zauctovani_dph_de]).builder
        end

        root
      end
    end
  end
end