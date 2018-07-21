module MoneyS3
  module Parsers
    class KurzType
      include ParserCore::BaseParser

      def banka
        at 'Banka'
      end

      def banka_attributes
        attributes_at 'Banka'
      end

      def datum
        at 'Datum'
      end

      def datum_attributes
        attributes_at 'Datum'
      end

      def kod
        at 'Kod'
      end

      def kod_attributes
        attributes_at 'Kod'
      end

      def zeme
        at 'Zeme'
      end

      def zeme_attributes
        attributes_at 'Zeme'
      end

      def mnozstvi
        at 'Mnozstvi'
      end

      def mnozstvi_attributes
        attributes_at 'Mnozstvi'
      end

      def nb_stred
        at 'NBStred'
      end

      def nb_stred_attributes
        attributes_at 'NBStred'
      end

      def devizy_nakup
        at 'DevizyNakup'
      end

      def devizy_nakup_attributes
        attributes_at 'DevizyNakup'
      end

      def devizy_prodej
        at 'DevizyProdej'
      end

      def devizy_prodej_attributes
        attributes_at 'DevizyProdej'
      end

      def valuty_nakup
        at 'ValutyNakup'
      end

      def valuty_nakup_attributes
        attributes_at 'ValutyNakup'
      end

      def valuty_prodej
        at 'ValutyProdej'
      end

      def valuty_prodej_attributes
        attributes_at 'ValutyProdej'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:banka] = banka if has? 'Banka'
        hash[:banka_attributes] = banka_attributes if has? 'Banka'
        hash[:datum] = datum if has? 'Datum'
        hash[:datum_attributes] = datum_attributes if has? 'Datum'
        hash[:kod] = kod if has? 'Kod'
        hash[:kod_attributes] = kod_attributes if has? 'Kod'
        hash[:zeme] = zeme if has? 'Zeme'
        hash[:zeme_attributes] = zeme_attributes if has? 'Zeme'
        hash[:mnozstvi] = mnozstvi if has? 'Mnozstvi'
        hash[:mnozstvi_attributes] = mnozstvi_attributes if has? 'Mnozstvi'
        hash[:nb_stred] = nb_stred if has? 'NBStred'
        hash[:nb_stred_attributes] = nb_stred_attributes if has? 'NBStred'
        hash[:devizy_nakup] = devizy_nakup if has? 'DevizyNakup'
        hash[:devizy_nakup_attributes] = devizy_nakup_attributes if has? 'DevizyNakup'
        hash[:devizy_prodej] = devizy_prodej if has? 'DevizyProdej'
        hash[:devizy_prodej_attributes] = devizy_prodej_attributes if has? 'DevizyProdej'
        hash[:valuty_nakup] = valuty_nakup if has? 'ValutyNakup'
        hash[:valuty_nakup_attributes] = valuty_nakup_attributes if has? 'ValutyNakup'
        hash[:valuty_prodej] = valuty_prodej if has? 'ValutyProdej'
        hash[:valuty_prodej_attributes] = valuty_prodej_attributes if has? 'ValutyProdej'

        hash
      end
    end
  end
end