module MoneyS3
  module Parsers
    class KomponentaType
      include ParserCore::BaseParser

      def poc_mj
        at 'PocMJ'
      end

      def poc_mj_attributes
        attributes_at 'PocMJ'
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

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:poc_mj] = poc_mj if has? 'PocMJ'
        hash[:poc_mj_attributes] = poc_mj_attributes if has? 'PocMJ'
        hash[:stav_zasoby] = stav_zasoby.to_h if has? 'StavZasoby'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'

        hash
      end
    end
  end
end