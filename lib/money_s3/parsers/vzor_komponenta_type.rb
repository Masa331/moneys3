require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/header_kusovnik_type'
require 'money_s3/parsers/child_kusovnik_type'
require 'money_s3/parsers/km_karta_type'

module MoneyS3
  module Parsers
    class VzorKomponentaType
      include BaseParser

      def header
        submodel_at(HeaderKusovnikType, :Header)
      end

      def child
        submodel_at(ChildKusovnikType, :Child)
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def to_h
        { header: header.to_h,
          child: child.to_h,
          km_karta: km_karta.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end