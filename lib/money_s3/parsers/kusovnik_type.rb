require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/header_kusovnik_type'
require 'money_s3/parsers/child_kusovnik_type'
require 'money_s3/parsers/komponenta_kusovnik_type'

module MoneyS3
  module Parsers
    class KusovnikType
      include BaseParser

      def header
        submodel_at(HeaderKusovnikType, :Header)
      end

      def child
        submodel_at(ChildKusovnikType, :Child)
      end

      def seznam_komponent
        array_of_at(KomponentaKusovnikType, [:SeznamKomponent, :Komponenta])
      end

      def to_h
        { header: header.to_h,
          child: child.to_h,
          seznam_komponent: seznam_komponent.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end