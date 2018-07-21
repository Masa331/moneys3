module MoneyS3
  module Builders
    class SeznamZakKusovnik
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :zak_kusovnik
          data[:zak_kusovnik].each { |i| root << KusovnikType.new('ZakKusovnik', i).builder }
        end

        root
      end
    end
  end
end