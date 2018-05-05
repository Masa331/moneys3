module MoneyS3
  module Builders
    class SeznamPoptPrij < SeznamType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :popt_prij
          data[:popt_prij].each { |i| root << PoptPrij.new('PoptPrij', i).builder }
        end

        root
      end
    end
  end
end