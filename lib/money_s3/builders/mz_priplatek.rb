module MoneyS3
  module Builders
    class MzPriplatek
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :typ_priplatku
          root << TypPriplatkuType.new('TypPriplatku', data[:typ_priplatku]).builder
        end
        root << build_element('PripHodin', data[:prip_hodin], data[:prip_hodin_attributes]) if data.key? :prip_hodin

        root
      end
    end
  end
end