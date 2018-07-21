module MoneyS3
  module Builders
    class SeznamPoptPrij
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :popt_prij
          data[:popt_prij].each { |i| root << PoptPrij.new('PoptPrij', i).builder }
        end

        root
      end
    end
  end
end