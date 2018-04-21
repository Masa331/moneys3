module MoneyS3
  module Builders
    class SubpolInvDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('MnSada', data[:mn_sada]) if data.key? :mn_sada
        if data.key? :polozka
          root << PolInvDoklType.new('Polozka', data[:polozka]).builder
        end

        root
      end
    end
  end
end