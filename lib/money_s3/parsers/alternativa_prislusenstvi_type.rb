require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/sklad_type'

module MoneyS3
  module Parsers
    class AlternativaPrislusenstviType
      include BaseParser

      def popis
        at 'Popis'
      end

      def poc_mj
        at 'PocMJ'
      end

      def poradi
        at 'Poradi'
      end

      def druh_komp
        at 'DruhKomp'
      end

      def symetric
        at 'Symetric'
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:poc_mj] = poc_mj if has? 'PocMJ'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:druh_komp] = druh_komp if has? 'DruhKomp'
        hash[:symetric] = symetric if has? 'Symetric'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'

        hash
      end
    end
  end
end