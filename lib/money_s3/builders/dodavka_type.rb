module MoneyS3
  module Builders
    class DodavkaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Oznaceni', data[:oznaceni]) if data.key? :oznaceni
        root << build_element('DatExp', data[:dat_exp]) if data.key? :dat_exp
        root << build_element('PocetMJ', data[:pocet_mj]) if data.key? :pocet_mj
        root << build_element('Cena', data[:cena]) if data.key? :cena

        root
      end
    end
  end
end