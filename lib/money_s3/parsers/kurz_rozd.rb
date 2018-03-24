require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dokl_ref_type'

module MoneyS3
  module Parsers
    class KurzRozd
      include BaseParser

      def typ
        at :Typ
      end

      def preceneni
        at :Preceneni
      end

      def castka
        at :Castka
      end

      def kr_poradi
        at :KRPoradi
      end

      def doklad
        submodel_at(DoklRefType, :Doklad)
      end

      def to_h
        hash = {}

        hash[:typ] = typ if raw.key? :Typ
        hash[:preceneni] = preceneni if raw.key? :Preceneni
        hash[:castka] = castka if raw.key? :Castka
        hash[:kr_poradi] = kr_poradi if raw.key? :KRPoradi
        hash[:doklad] = doklad.to_h if raw.key? :Doklad

        hash
      end
    end
  end
end