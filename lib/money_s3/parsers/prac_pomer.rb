module MoneyS3
  module Parsers
    class PracPomer
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def eldp_kod
        at 'ELDPKod'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:eldp_kod] = eldp_kod if has? 'ELDPKod'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end