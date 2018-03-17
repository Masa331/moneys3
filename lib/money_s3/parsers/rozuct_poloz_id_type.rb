require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class RozuctPolozIDType
      include BaseParser

      def popis
        at :Popis
      end

      def uc_md
        at :UcMD
      end

      def uc_d
        at :UcD
      end

      def castka
        at :Castka
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

      def par_sym
        at :ParSym
      end

      def par_ico
        at :ParICO
      end

      def pozn
        at :Pozn
      end

      def typ_cena
        at :TypCena
      end

      def sazba_dph
        at :SazbaDPH
      end

      def to_h
        { popis: popis,
          uc_md: uc_md,
          uc_d: uc_d,
          castka: castka,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          par_sym: par_sym,
          par_ico: par_ico,
          pozn: pozn,
          typ_cena: typ_cena,
          sazba_dph: sazba_dph
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end