module MoneyS3
  module Builders
    class SeznamNabPrij
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :nab_prij
          data[:nab_prij].each { |i| root << NabPrij.new('NabPrij', i).builder }
        end

        root
      end
    end
  end
end