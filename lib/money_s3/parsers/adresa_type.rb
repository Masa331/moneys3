module MoneyS3
  module Parsers
    class AdresaType
      include ParserCore::BaseParser

      def ulice
        at 'Ulice'
      end

      def ulice_attributes
        attributes_at 'Ulice'
      end

      def misto
        at 'Misto'
      end

      def misto_attributes
        attributes_at 'Misto'
      end

      def psc
        at 'PSC'
      end

      def psc_attributes
        attributes_at 'PSC'
      end

      def stat
        at 'Stat'
      end

      def stat_attributes
        attributes_at 'Stat'
      end

      def kod_statu
        at 'KodStatu'
      end

      def kod_statu_attributes
        attributes_at 'KodStatu'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:ulice] = ulice if has? 'Ulice'
        hash[:ulice_attributes] = ulice_attributes if has? 'Ulice'
        hash[:misto] = misto if has? 'Misto'
        hash[:misto_attributes] = misto_attributes if has? 'Misto'
        hash[:psc] = psc if has? 'PSC'
        hash[:psc_attributes] = psc_attributes if has? 'PSC'
        hash[:stat] = stat if has? 'Stat'
        hash[:stat_attributes] = stat_attributes if has? 'Stat'
        hash[:kod_statu] = kod_statu if has? 'KodStatu'
        hash[:kod_statu_attributes] = kod_statu_attributes if has? 'KodStatu'

        hash
      end
    end
  end
end