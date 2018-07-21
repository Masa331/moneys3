module MoneyS3
  module Parsers
    class BankSpojeniType
      include ParserCore::BaseParser

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def kod_banky
        at 'KodBanky'
      end

      def kod_banky_attributes
        attributes_at 'KodBanky'
      end

      def mena
        at 'Mena'
      end

      def mena_attributes
        attributes_at 'Mena'
      end

      def ucel
        at 'Ucel'
      end

      def ucel_attributes
        attributes_at 'Ucel'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:kod_banky] = kod_banky if has? 'KodBanky'
        hash[:kod_banky_attributes] = kod_banky_attributes if has? 'KodBanky'
        hash[:mena] = mena if has? 'Mena'
        hash[:mena_attributes] = mena_attributes if has? 'Mena'
        hash[:ucel] = ucel if has? 'Ucel'
        hash[:ucel_attributes] = ucel_attributes if has? 'Ucel'

        hash
      end
    end
  end
end