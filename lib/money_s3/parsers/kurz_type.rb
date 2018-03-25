require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class KurzType
      include BaseParser

      def banka
        at 'Banka'
      end

      def datum
        at 'Datum'
      end

      def kod
        at 'Kod'
      end

      def zeme
        at 'Zeme'
      end

      def mnozstvi
        at 'Mnozstvi'
      end

      def nb_stred
        at 'NBStred'
      end

      def devizy_nakup
        at 'DevizyNakup'
      end

      def devizy_prodej
        at 'DevizyProdej'
      end

      def valuty_nakup
        at 'ValutyNakup'
      end

      def valuty_prodej
        at 'ValutyProdej'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:banka] = banka if has? 'Banka'
        hash[:datum] = datum if has? 'Datum'
        hash[:kod] = kod if has? 'Kod'
        hash[:zeme] = zeme if has? 'Zeme'
        hash[:mnozstvi] = mnozstvi if has? 'Mnozstvi'
        hash[:nb_stred] = nb_stred if has? 'NBStred'
        hash[:devizy_nakup] = devizy_nakup if has? 'DevizyNakup'
        hash[:devizy_prodej] = devizy_prodej if has? 'DevizyProdej'
        hash[:valuty_nakup] = valuty_nakup if has? 'ValutyNakup'
        hash[:valuty_prodej] = valuty_prodej if has? 'ValutyProdej'

        hash
      end
    end
  end
end