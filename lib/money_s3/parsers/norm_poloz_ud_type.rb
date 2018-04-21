module MoneyS3
  module Parsers
    class NormPolozUDType
      include BaseParser

      def poradi
        at 'Poradi'
      end

      def popis
        at 'Popis'
      end

      def cena
        at 'Cena'
      end

      def valuty
        at 'Valuty'
      end

      def cena_typ
        at 'CenaTyp'
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def text_mj
        at 'TextMJ'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def pr_kont
        at 'PrKont'
      end

      def cleneni
        at 'Cleneni'
      end

      def predm_pln
        at 'PredmPln'
      end

      def stred
        at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def poznamka
        at 'Poznamka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:poradi] = poradi if has? 'Poradi'
        hash[:popis] = popis if has? 'Popis'
        hash[:cena] = cena if has? 'Cena'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:cena_typ] = cena_typ if has? 'CenaTyp'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:text_mj] = text_mj if has? 'TextMJ'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:stred] = stred if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:poznamka] = poznamka if has? 'Poznamka'

        hash
      end
    end
  end
end