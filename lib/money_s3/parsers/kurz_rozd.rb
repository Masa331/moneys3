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

        hash[:typ] = typ if has? :Typ
        hash[:preceneni] = preceneni if has? :Preceneni
        hash[:castka] = castka if has? :Castka
        hash[:kr_poradi] = kr_poradi if has? :KRPoradi
        hash[:doklad] = doklad.to_h if has? :Doklad

        hash
      end
    end
  end
end