require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/header_kusovnik_type'
require 'money_s3/parsers/child_kusovnik_type'
require 'money_s3/parsers/km_karta_type'

module MoneyS3
  module Parsers
    class VzorKomponentaType
      include BaseParser

      def header
        submodel_at(HeaderKusovnikType, 'Header')
      end

      def child
        submodel_at(ChildKusovnikType, 'Child')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:header] = header.to_h if has? 'Header'
        hash[:child] = child.to_h if has? 'Child'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'

        hash
      end
    end
  end
end