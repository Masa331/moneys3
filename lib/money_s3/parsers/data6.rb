module MoneyS3
  module Parsers
    class Data6
      include ParserCore::BaseParser

      def zauctovani_dph_de
        submodel_at(ZauctovaniDPHDetype, 'ZauctovaniDPH_DE')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zauctovani_dph_de] = zauctovani_dph_de.to_h if has? 'ZauctovaniDPH_DE'

        hash
      end
    end
  end
end