module MoneyS3
  module Builders
    class SeznamCenHladin
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :cenova_hladina
          data[:cenova_hladina].each { |i| root << CenovaHladina.new('CenovaHladina', i).builder }
        end

        root
      end
    end
  end
end