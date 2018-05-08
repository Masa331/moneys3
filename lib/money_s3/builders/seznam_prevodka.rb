module MoneyS3
  module Builders
    class SeznamPrevodka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :prevodka
          data[:prevodka].each { |i| root << Prevodka.new('Prevodka', i).builder }
        end

        root
      end
    end
  end
end