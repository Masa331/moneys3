require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class KurzType
      include BaseParser

      def banka
        at :Banka
      end

      def datum
        at :Datum
      end

      def kod
        at :Kod
      end

      def zeme
        at :Zeme
      end

      def mnozstvi
        at :Mnozstvi
      end

      def nb_stred
        at :NBStred
      end

      def devizy_nakup
        at :DevizyNakup
      end

      def devizy_prodej
        at :DevizyProdej
      end

      def valuty_nakup
        at :ValutyNakup
      end

      def valuty_prodej
        at :ValutyProdej
      end

      def to_h
        hash = {}

        hash[:banka] = banka if raw.key? :Banka
        hash[:datum] = datum if raw.key? :Datum
        hash[:kod] = kod if raw.key? :Kod
        hash[:zeme] = zeme if raw.key? :Zeme
        hash[:mnozstvi] = mnozstvi if raw.key? :Mnozstvi
        hash[:nb_stred] = nb_stred if raw.key? :NBStred
        hash[:devizy_nakup] = devizy_nakup if raw.key? :DevizyNakup
        hash[:devizy_prodej] = devizy_prodej if raw.key? :DevizyProdej
        hash[:valuty_nakup] = valuty_nakup if raw.key? :ValutyNakup
        hash[:valuty_prodej] = valuty_prodej if raw.key? :ValutyProdej

        hash
      end
    end
  end
end