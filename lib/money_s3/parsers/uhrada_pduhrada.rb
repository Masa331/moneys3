require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class UhradaPduhrada
      include BaseParser

      def poradi
        at :Poradi
      end

      def kontace
        at :Kontace
      end

      def stredisko
        at :Stredisko
      end

      def zakazka
        at :Zakazka
      end

      def cinnost
        at :Cinnost
      end

      def zaklad
        at :Zaklad
      end

      def dphzs
        at :DPHZS
      end

      def dphss
        at :DPHSS
      end

      def wl_zaklady
        at :WLZaklady
      end

      def wldph1
        at :WLDPH1
      end

      def wldph2
        at :WLDPH2
      end

      def to_h
        hash = {}

        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:kontace] = kontace if raw.key? :Kontace
        hash[:stredisko] = stredisko if raw.key? :Stredisko
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:zaklad] = zaklad if raw.key? :Zaklad
        hash[:dphzs] = dphzs if raw.key? :DPHZS
        hash[:dphss] = dphss if raw.key? :DPHSS
        hash[:wl_zaklady] = wl_zaklady if raw.key? :WLZaklady
        hash[:wldph1] = wldph1 if raw.key? :WLDPH1
        hash[:wldph2] = wldph2 if raw.key? :WLDPH2

        hash
      end
    end
  end
end