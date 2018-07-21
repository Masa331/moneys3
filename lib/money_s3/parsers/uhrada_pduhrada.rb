module MoneyS3
  module Parsers
    class UhradaPduhrada
      include ParserCore::BaseParser

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def kontace
        at 'Kontace'
      end

      def kontace_attributes
        attributes_at 'Kontace'
      end

      def stredisko
        at 'Stredisko'
      end

      def stredisko_attributes
        attributes_at 'Stredisko'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def zaklad
        at 'Zaklad'
      end

      def zaklad_attributes
        attributes_at 'Zaklad'
      end

      def dphzs
        at 'DPHZS'
      end

      def dphzs_attributes
        attributes_at 'DPHZS'
      end

      def dphss
        at 'DPHSS'
      end

      def dphss_attributes
        attributes_at 'DPHSS'
      end

      def wl_zaklady
        at 'WLZaklady'
      end

      def wl_zaklady_attributes
        attributes_at 'WLZaklady'
      end

      def wldph1
        at 'WLDPH1'
      end

      def wldph1_attributes
        attributes_at 'WLDPH1'
      end

      def wldph2
        at 'WLDPH2'
      end

      def wldph2_attributes
        attributes_at 'WLDPH2'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:kontace] = kontace if has? 'Kontace'
        hash[:kontace_attributes] = kontace_attributes if has? 'Kontace'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:zaklad] = zaklad if has? 'Zaklad'
        hash[:zaklad_attributes] = zaklad_attributes if has? 'Zaklad'
        hash[:dphzs] = dphzs if has? 'DPHZS'
        hash[:dphzs_attributes] = dphzs_attributes if has? 'DPHZS'
        hash[:dphss] = dphss if has? 'DPHSS'
        hash[:dphss_attributes] = dphss_attributes if has? 'DPHSS'
        hash[:wl_zaklady] = wl_zaklady if has? 'WLZaklady'
        hash[:wl_zaklady_attributes] = wl_zaklady_attributes if has? 'WLZaklady'
        hash[:wldph1] = wldph1 if has? 'WLDPH1'
        hash[:wldph1_attributes] = wldph1_attributes if has? 'WLDPH1'
        hash[:wldph2] = wldph2 if has? 'WLDPH2'
        hash[:wldph2_attributes] = wldph2_attributes if has? 'WLDPH2'

        hash
      end
    end
  end
end