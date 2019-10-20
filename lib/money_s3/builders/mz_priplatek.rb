module MoneyS3
  module Builders
    class MzPriplatek
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :typ_priplatku
          root << TypPriplatkuType.new('TypPriplatku', data[:typ_priplatku]).builder
        end
        root << build_element('PripHodin', data[:prip_hodin], data[:prip_hodin_attributes]) if data.key? :prip_hodin

        root
      end
    end
  end
end