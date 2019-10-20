module MoneyS3
  module Builders
    class SeznamKurzListku
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :kurz_listek
          data[:kurz_listek].each { |i| root << KurzListek.new('KurzListek', i).builder }
        end

        root
      end
    end
  end
end