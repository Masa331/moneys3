module MoneyS3
  module Parsers
    class Data6
      include BaseParser

      def zauctovani_dph_de
        submodel_at(ZauctovaniDPHDetype, 'ZauctovaniDPH_DE')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zauctovani_dph_de] = zauctovani_dph_de.to_h_with_attrs if has? 'ZauctovaniDPH_DE'

        hash
      end
    end
  end
end