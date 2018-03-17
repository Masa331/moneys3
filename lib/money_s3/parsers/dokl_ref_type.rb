require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'

module MoneyS3
  module Parsers
    class DoklRefType
      include BaseParser

      def id_dokladu
        at :IDDokladu
      end

      def cislo_dokladu
        at :CisloDokladu
      end

      def druh_dokladu
        at :DruhDokladu
      end

      def rok
        at :Rok
      end

      def eet
        submodel_at(EETType, :EET)
      end

      def to_h
        { id_dokladu: id_dokladu,
          cislo_dokladu: cislo_dokladu,
          druh_dokladu: druh_dokladu,
          rok: rok,
          eet: eet.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end