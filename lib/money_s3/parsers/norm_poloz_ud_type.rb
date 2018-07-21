module MoneyS3
  module Parsers
    class NormPolozUDType
      include ParserCore::BaseParser

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def cena
        at 'Cena'
      end

      def cena_attributes
        attributes_at 'Cena'
      end

      def valuty
        at 'Valuty'
      end

      def valuty_attributes
        attributes_at 'Valuty'
      end

      def cena_typ
        at 'CenaTyp'
      end

      def cena_typ_attributes
        attributes_at 'CenaTyp'
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def sazba_dph_attributes
        attributes_at 'SazbaDPH'
      end

      def text_mj
        at 'TextMJ'
      end

      def text_mj_attributes
        attributes_at 'TextMJ'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def pocet_mj_attributes
        attributes_at 'PocetMJ'
      end

      def pr_kont
        at 'PrKont'
      end

      def pr_kont_attributes
        attributes_at 'PrKont'
      end

      def cleneni
        at 'Cleneni'
      end

      def cleneni_attributes
        attributes_at 'Cleneni'
      end

      def predm_pln
        at 'PredmPln'
      end

      def predm_pln_attributes
        attributes_at 'PredmPln'
      end

      def stred
        at 'Stred'
      end

      def stred_attributes
        attributes_at 'Stred'
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

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:valuty_attributes] = valuty_attributes if has? 'Valuty'
        hash[:cena_typ] = cena_typ if has? 'CenaTyp'
        hash[:cena_typ_attributes] = cena_typ_attributes if has? 'CenaTyp'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:sazba_dph_attributes] = sazba_dph_attributes if has? 'SazbaDPH'
        hash[:text_mj] = text_mj if has? 'TextMJ'
        hash[:text_mj_attributes] = text_mj_attributes if has? 'TextMJ'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pocet_mj_attributes] = pocet_mj_attributes if has? 'PocetMJ'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:pr_kont_attributes] = pr_kont_attributes if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:cleneni_attributes] = cleneni_attributes if has? 'Cleneni'
        hash[:predm_pln] = predm_pln if has? 'PredmPln'
        hash[:predm_pln_attributes] = predm_pln_attributes if has? 'PredmPln'
        hash[:stred] = stred if has? 'Stred'
        hash[:stred_attributes] = stred_attributes if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'

        hash
      end
    end
  end
end