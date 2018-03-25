require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dalsi_sazba'

module MoneyS3
  module Parsers
    class SouhrnDPHType
      include BaseParser

      def zaklad0
        at :Zaklad0
      end

      def zaklad5
        at :Zaklad5
      end

      def zaklad22
        at :Zaklad22
      end

      def dph5
        at :DPH5
      end

      def dph22
        at :DPH22
      end

      def seznam_dalsi_sazby
        array_of_at(DalsiSazba, [:SeznamDalsiSazby, :DalsiSazba])
      end

      def to_h
        hash = {}

        hash[:zaklad0] = zaklad0 if has? :Zaklad0
        hash[:zaklad5] = zaklad5 if has? :Zaklad5
        hash[:zaklad22] = zaklad22 if has? :Zaklad22
        hash[:dph5] = dph5 if has? :DPH5
        hash[:dph22] = dph22 if has? :DPH22
        hash[:seznam_dalsi_sazby] = seznam_dalsi_sazby.map(&:to_h) if has? :SeznamDalsiSazby

        hash
      end
    end
  end
end