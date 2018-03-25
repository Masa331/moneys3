require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class CenovaHladinaType
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def pozn
        at 'Pozn'
      end

      def skup
        at 'Skup'
      end

      def ceny
        at 'Ceny'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:skup] = skup if has? 'Skup'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:mena] = mena.to_h if has? 'Mena'

        hash
      end
    end
  end
end