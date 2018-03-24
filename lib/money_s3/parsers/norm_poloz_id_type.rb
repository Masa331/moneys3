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
        hash = {}

        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:popis] = popis if raw.key? :Popis
        hash[:zkratka] = zkratka if raw.key? :Zkratka
        hash[:cena] = cena if raw.key? :Cena
        hash[:cena_typ] = cena_typ if raw.key? :CenaTyp
        hash[:sazba_dph] = sazba_dph if raw.key? :SazbaDPH
        hash[:text_mj] = text_mj if raw.key? :TextMJ
        hash[:pocet_mj] = pocet_mj if raw.key? :PocetMJ
        hash[:pr_kont] = pr_kont if raw.key? :PrKont
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:stred] = stred if raw.key? :Stred
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:poznamka] = poznamka if raw.key? :Poznamka

        hash
      end
    end
  end
end