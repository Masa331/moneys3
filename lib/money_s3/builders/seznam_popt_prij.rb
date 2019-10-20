module MoneyS3
  module Builders
    class SeznamPoptPrij
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :popt_prij
          data[:popt_prij].each { |i| root << PoptPrij.new('PoptPrij', i).builder }
        end

        root
      end
    end
  end
end