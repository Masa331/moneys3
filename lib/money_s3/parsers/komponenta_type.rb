require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/stav_zasoby_type'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/sklad_type'

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

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:poc_mj] = poc_mj if has? 'PocMJ'
        hash[:stav_zasoby] = stav_zasoby.to_h if has? 'StavZasoby'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'

        hash
      end
    end
  end
end