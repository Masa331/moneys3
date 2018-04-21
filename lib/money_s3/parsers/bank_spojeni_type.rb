module MoneyS3
  module Parsers
    class BankSpojeniType
      include BaseParser

      def ucet
        at 'Ucet'
      end

      def kod_banky
        at 'KodBanky'
      end

      def mena
        at 'Mena'
      end

      def ucel
        at 'Ucel'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:ucet] = ucet if has? 'Ucet'
        hash[:kod_banky] = kod_banky if has? 'KodBanky'
        hash[:mena] = mena if has? 'Mena'
        hash[:ucel] = ucel if has? 'Ucel'

        hash
      end
    end
  end
end