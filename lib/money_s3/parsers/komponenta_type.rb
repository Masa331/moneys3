module MoneyS3
  module Parsers
    class KomponentaType
      include BaseParser

      def poc_mj
        at 'PocMJ'
      end

      def stav_zasoby
        submodel_at(StavZasobyType, 'StavZasoby')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:poc_mj] = poc_mj if has? 'PocMJ'
        hash[:stav_zasoby] = stav_zasoby.to_h_with_attrs if has? 'StavZasoby'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'

        hash
      end
    end
  end
end