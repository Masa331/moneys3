module MoneyS3
  module Builders
    class SeznamFirem
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :firma
          data[:firma].each { |i| root << Firma.new('Firma', i).builder }
        end

        root
      end
    end
  end
end