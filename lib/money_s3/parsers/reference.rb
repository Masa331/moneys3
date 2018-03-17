require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kusovnik_type'
require 'money_s3/parsers/vzor_komponenta_type'

module MoneyS3
  module Parsers
    class Reference
      include BaseParser

      def typ_kusovnik
        submodel_at(KusovnikType, :TypKusovnik)
      end

      def vzor
        submodel_at(VzorKomponentaType, :Vzor)
      end

      def to_h
        { typ_kusovnik: typ_kusovnik.to_h,
          vzor: vzor.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end