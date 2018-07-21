module MoneyS3
  module Builders
    class SeznamZamestnancu
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :zamestnanec
          data[:zamestnanec].each { |i| root << ZamestnanecType.new('Zamestnanec', i).builder }
        end

        root
      end
    end
  end
end