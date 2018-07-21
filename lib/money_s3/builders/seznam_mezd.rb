module MoneyS3
  module Builders
    class SeznamMezd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :mzda
          data[:mzda].each { |i| root << MzdaType.new('Mzda', i).builder }
        end

        root
      end
    end
  end
end