require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class CenovaHladina
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def nazev
        at :Nazev
      end

      def pozn
        at :Pozn
      end

      def skup
        at :Skup
      end

      def ceny
        at :Ceny
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:skup] = skup if raw.key? :Skup
        hash[:ceny] = ceny if raw.key? :Ceny
        hash[:mena] = mena.to_h if raw.key? :Mena

        hash
      end
    end
  end
end