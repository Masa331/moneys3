module MoneyS3
  module Builders
    class VazbaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('PodTyp', data[:pod_typ]) if data.key? :pod_typ
        if data.key? :doklad
          root << Doklad.new('Doklad', data[:doklad]).builder
        end

        root
      end
    end
  end
end