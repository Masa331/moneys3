module MoneyS3
  module Builders
    class SeznamFaktPrij
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :fakt_prij
          data[:fakt_prij].each { |i| root << FaktPrij.new('FaktPrij', i).builder }
        end

        root
      end
    end
  end
end