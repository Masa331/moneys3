module MoneyS3
  module Builders
    class SubPolObjType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('MJNaSadu', data[:mj_na_sadu], data[:mj_na_sadu_attributes]) if data.key? :mj_na_sadu
        if data.key? :polozka
          root << PolObjednType.new('Polozka', data[:polozka]).builder
        end

        root
      end
    end
  end
end