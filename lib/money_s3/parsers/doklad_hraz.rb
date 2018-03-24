require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/eet_type'

module MoneyS3
  module Parsers
    class DokladHraz
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
        hash = {}

        hash[:id_dokladu] = id_dokladu if raw.key? :IDDokladu
        hash[:cislo_dokladu] = cislo_dokladu if raw.key? :CisloDokladu
        hash[:druh_dokladu] = druh_dokladu if raw.key? :DruhDokladu
        hash[:rok] = rok if raw.key? :Rok
        hash[:eet] = eet.to_h if raw.key? :EET

        hash
      end
    end
  end
end