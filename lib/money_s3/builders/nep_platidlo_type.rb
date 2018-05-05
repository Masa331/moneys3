module MoneyS3
  module Builders
    class NepPlatidloType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Kod', data[:kod]) if data.key? :kod
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('VarSymb', data[:var_symb]) if data.key? :var_symb

        root
      end
    end
  end
end