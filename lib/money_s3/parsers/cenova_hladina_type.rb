module MoneyS3
  module Parsers
    class CenovaHladinaType
      include ParserCore::BaseParser
      include Groups::DefiniceCeny

      def zkrat
        at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def pozn
        at 'Pozn'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def skup
        at 'Skup'
      end

      def ceny
        at 'Ceny'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:mena] = mena.to_h_with_attrs if has? 'Mena'
        hash[:skup] = skup if has? 'Skup'
        hash[:ceny] = ceny if has? 'Ceny'

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end