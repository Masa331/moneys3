require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class UhradaPduhrada
      include BaseParser

      def poradi
        at 'Poradi'
      end

      def kontace
        at 'Kontace'
      end

      def stredisko
        at 'Stredisko'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def zaklad
        at 'Zaklad'
      end

      def dphzs
        at 'DPHZS'
      end

      def dphss
        at 'DPHSS'
      end

      def wl_zaklady
        at 'WLZaklady'
      end

      def wldph1
        at 'WLDPH1'
      end

      def wldph2
        at 'WLDPH2'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:poradi] = poradi if has? 'Poradi'
        hash[:kontace] = kontace if has? 'Kontace'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:zaklad] = zaklad if has? 'Zaklad'
        hash[:dphzs] = dphzs if has? 'DPHZS'
        hash[:dphss] = dphss if has? 'DPHSS'
        hash[:wl_zaklady] = wl_zaklady if has? 'WLZaklady'
        hash[:wldph1] = wldph1 if has? 'WLDPH1'
        hash[:wldph2] = wldph2 if has? 'WLDPH2'

        hash
      end
    end
  end
end