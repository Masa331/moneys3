require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma_type'

module MoneyS3
  module Parsers
    class RozuctPolozUDType
      include BaseParser

      def popis
        at :Popis
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

      def pozn
        at :Pozn
      end

      def typ_cena
        at :TypCena
      end

      def sazba_dph
        at :SazbaDPH
      end

      def uc_md
        at :UcMD
      end

      def uc_d
        at :UcD
      end

      def pohyb
        at :Pohyb
      end

      def par_sym
        at :ParSym
      end

      def var_sym
        at :VarSym
      end

      def adresa
        submodel_at(FirmaType, :Adresa)
      end

      def to_h
        { popis: popis,
          castka: castka,
          stred: stred,
          zakazka: zakazka,
          cinnost: cinnost,
          pozn: pozn,
          typ_cena: typ_cena,
          sazba_dph: sazba_dph,
          uc_md: uc_md,
          uc_d: uc_d,
          pohyb: pohyb,
          par_sym: par_sym,
          var_sym: var_sym,
          adresa: adresa.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end