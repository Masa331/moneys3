module MoneyS3
  module Parsers
    class Control
      include ParserCore::BaseParser

      def cislo_davky
        submodel_at(MessageRootType, 'CisloDavky')
      end

      def kod_agendy
        submodel_at(MessageRootType, 'KodAgendy')
      end

      def hosp_rok
        submodel_at(MessageRootType, 'HospRok')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cislo_davky] = cislo_davky.to_h if has? 'CisloDavky'
        hash[:kod_agendy] = kod_agendy.to_h if has? 'KodAgendy'
        hash[:hosp_rok] = hosp_rok.to_h if has? 'HospRok'

        hash
      end
    end
  end
end