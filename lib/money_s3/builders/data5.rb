module MoneyS3
  module Builders
    class Data5
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :zauctovani_dph
          root << ZauctovaniDPHType.new('ZauctovaniDPH', data[:zauctovani_dph]).builder
        end

        root
      end
    end
  end
end