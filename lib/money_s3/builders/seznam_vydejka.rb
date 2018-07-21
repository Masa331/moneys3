module MoneyS3
  module Builders
    class SeznamVydejka
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :vydejka
          data[:vydejka].each { |i| root << Vydejka.new('Vydejka', i).builder }
        end

        root
      end
    end
  end
end