module MoneyS3
  module Parsers
    class Data5
      include ParserCore::BaseParser

      def zauctovani_dph
        submodel_at(ZauctovaniDPHType, 'ZauctovaniDPH')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zauctovani_dph] = zauctovani_dph.to_h if has? 'ZauctovaniDPH'

        hash
      end
    end
  end
end