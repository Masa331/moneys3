module MoneyS3
  module Builders
    class SeznamSkladu
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :sklad
          data[:sklad].each { |i| root << Sklad.new('Sklad', i).builder }
        end

        root
      end
    end
  end
end