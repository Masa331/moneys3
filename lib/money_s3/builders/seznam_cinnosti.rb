module MoneyS3
  module Builders
    class SeznamCinnosti
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :cinnost
          data[:cinnost].each { |i| root << Cinnost.new('Cinnost', i).builder }
        end

        root
      end
    end
  end
end