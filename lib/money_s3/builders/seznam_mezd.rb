module MoneyS3
  module Builders
    class SeznamMezd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :mzda
          data[:mzda].each { |i| root << MzdaType.new('Mzda', i).builder }
        end

        root
      end
    end
  end
end