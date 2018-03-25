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

        hash[:popis] = popis if has? :Popis
        hash[:hladina_dph] = hladina_dph if has? :HladinaDPH
        hash[:sazba] = sazba if has? :Sazba
        hash[:zaklad] = zaklad if has? :Zaklad
        hash[:dph] = dph if has? :DPH

        hash
      end
    end
  end
end