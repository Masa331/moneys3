module MoneyS3
  module Builders
    class Data
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :fakt_vyd
          root << FakturaType.new('FaktVyd', data[:fakt_vyd]).builder
        end
        if data.key? :fakt_prij
          root << FakturaType.new('FaktPrij', data[:fakt_prij]).builder
        end

        root
      end
    end
  end
end