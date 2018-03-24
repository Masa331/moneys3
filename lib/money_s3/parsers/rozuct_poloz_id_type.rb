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
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:uc_md] = uc_md if raw.key? :UcMD
        hash[:uc_d] = uc_d if raw.key? :UcD
        hash[:castka] = castka if raw.key? :Castka
        hash[:stred] = stred if raw.key? :Stred
        hash[:zakazka] = zakazka if raw.key? :Zakazka
        hash[:cinnost] = cinnost if raw.key? :Cinnost
        hash[:par_sym] = par_sym if raw.key? :ParSym
        hash[:par_ico] = par_ico if raw.key? :ParICO
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:typ_cena] = typ_cena if raw.key? :TypCena
        hash[:sazba_dph] = sazba_dph if raw.key? :SazbaDPH

        hash
      end
    end
  end
end