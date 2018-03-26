require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class AdresaType
      include BaseParser

      def ulice
        at 'Ulice'
      end

      def misto
        at 'Misto'
      end

      def psc
        at 'PSC'
      end

      def stat
        at 'Stat'
      end

      def kod_statu
        at 'KodStatu'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:ulice] = ulice if has? 'Ulice'
        hash[:misto] = misto if has? 'Misto'
        hash[:psc] = psc if has? 'PSC'
        hash[:stat] = stat if has? 'Stat'
        hash[:kod_statu] = kod_statu if has? 'KodStatu'

        hash
      end
    end
  end
end