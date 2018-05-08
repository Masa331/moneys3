module MoneyS3
  module Builders
    class SeznamProdejka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :prodejka
          data[:prodejka].each { |i| root << Prodejka.new('Prodejka', i).builder }
        end

        root
      end
    end
  end
end