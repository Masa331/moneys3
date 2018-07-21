module MoneyS3
  module Builders
    class SubpolInvDType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('MnSada', data[:mn_sada], data[:mn_sada_attributes]) if data.key? :mn_sada
        if data.key? :polozka
          root << PolInvDoklType.new('Polozka', data[:polozka]).builder
        end

        root
      end
    end
  end
end