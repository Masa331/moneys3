require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class DalsiSazba
      include BaseParser

      def popis
        at :Popis
      end

      def hladina_dph
        at :HladinaDPH
      end

      def sazba
        at :Sazba
      end

      def zaklad
        at :Zaklad
      end

      def dph
        at :DPH
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:hladina_dph] = hladina_dph if raw.key? :HladinaDPH
        hash[:sazba] = sazba if raw.key? :Sazba
        hash[:zaklad] = zaklad if raw.key? :Zaklad
        hash[:dph] = dph if raw.key? :DPH

        hash
      end
    end
  end
end