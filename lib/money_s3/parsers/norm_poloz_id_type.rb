require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class NormPolozIDType
      include BaseParser

      def poradi
        at :Poradi
      end

      def popis
        at :Popis
      end

      def zkratka
        at :Zkratka
      end

      def cena
        at :Cena
      end

      def cena_typ
        at :CenaTyp
      end

      def sazba_dph
        at :SazbaDPH
      end

      def text_mj
        at :TextMJ
      end

      def pocet_mj
        at :PocetMJ
      end

      def pr_kont
        at :PrKont
      end

      def cleneni
        at :Cleneni
      end

      def stred
        at :Stred
      end

      def zakazka
        at :Zakazka
      end

      def cinnost
        at :Cinnost
      end

      def poznamka
        at :Poznamka
      end

      def to_h
        { poradi: poradi,
          popis: popis,
          zkratka: zkratka,
          cena: cena,
          cena_typ: cena_typ,
          sazba_dph: sazba_dph,
          text_mj: text_mj,
          pocet_mj: pocet_mj,
          pr_kont: pr_kont,
          cleneni: cleneni,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          poznamka: poznamka
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end