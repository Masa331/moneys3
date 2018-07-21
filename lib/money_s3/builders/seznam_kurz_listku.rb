module MoneyS3
  module Builders
    class SeznamKurzListku
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :kurz_listek
          data[:kurz_listek].each { |i| root << KurzListek.new('KurzListek', i).builder }
        end

        root
      end
    end
  end
end