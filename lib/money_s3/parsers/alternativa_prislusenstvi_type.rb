require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/sklad_type'

module MoneyS3
  module Parsers
    class AlternativaPrislusenstviType
      include BaseParser

      def popis
        at :Popis
      end

      def poc_mj
        at :PocMJ
      end

      def poradi
        at :Poradi
      end

      def druh_komp
        at :DruhKomp
      end

      def symetric
        at :Symetric
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:poc_mj] = poc_mj if raw.key? :PocMJ
        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:druh_komp] = druh_komp if raw.key? :DruhKomp
        hash[:symetric] = symetric if raw.key? :Symetric
        hash[:km_karta] = km_karta.to_h if raw.key? :KmKarta
        hash[:sklad] = sklad.to_h if raw.key? :Sklad

        hash
      end
    end
  end
end