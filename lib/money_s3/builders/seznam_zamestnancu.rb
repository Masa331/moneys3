module MoneyS3
  module Builders
    class SeznamZamestnancu
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :zamestnanec
          data[:zamestnanec].each { |i| root << ZamestnanecType.new('Zamestnanec', i).builder }
        end

        root
      end
    end
  end
end