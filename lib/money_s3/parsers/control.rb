module MoneyS3
  module Parsers
    class Control
      include BaseParser

      def cislo_davky
        submodel_at(MessageRootType, 'CisloDavky')
      end

      def kod_agendy
        submodel_at(MessageRootType, 'KodAgendy')
      end

      def hosp_rok
        submodel_at(MessageRootType, 'HospRok')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:cislo_davky] = cislo_davky.to_h_with_attrs if has? 'CisloDavky'
        hash[:kod_agendy] = kod_agendy.to_h_with_attrs if has? 'KodAgendy'
        hash[:hosp_rok] = hosp_rok.to_h_with_attrs if has? 'HospRok'

        hash
      end
    end
  end
end