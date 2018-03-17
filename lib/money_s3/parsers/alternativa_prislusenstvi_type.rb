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
        { popis: popis,
          poc_mj: poc_mj,
          poradi: poradi,
          druh_komp: druh_komp,
          symetric: symetric,
          km_karta: km_karta.to_h,
          sklad: sklad.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end