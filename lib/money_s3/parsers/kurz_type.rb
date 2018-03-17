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
        { banka: banka,
          datum: datum,
          kod: kod,
          zeme: zeme,
          mnozstvi: mnozstvi,
          nb_stred: nb_stred,
          devizy_nakup: devizy_nakup,
          devizy_prodej: devizy_prodej,
          valuty_nakup: valuty_nakup,
          valuty_prodej: valuty_prodej
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end