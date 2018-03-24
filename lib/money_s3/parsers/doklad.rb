require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Doklad
      include BaseParser

      def druh
        at :Druh
      end

      def cislo
        at :Cislo
      end

      def guid
        at :GUID
      end

      def prijat_dokl
        at :PrijatDokl
      end

      def var_symbol
        at :VarSymbol
      end

      def vystaveno
        at :Vystaveno
      end

      def dat_uc_pr
        at :DatUcPr
      end

      def plneno_dph
        at :PlnenoDPH
      end

      def to_h
        hash = {}

        hash[:druh] = druh if raw.key? :Druh
        hash[:cislo] = cislo if raw.key? :Cislo
        hash[:guid] = guid if raw.key? :GUID
        hash[:prijat_dokl] = prijat_dokl if raw.key? :PrijatDokl
        hash[:var_symbol] = var_symbol if raw.key? :VarSymbol
        hash[:vystaveno] = vystaveno if raw.key? :Vystaveno
        hash[:dat_uc_pr] = dat_uc_pr if raw.key? :DatUcPr
        hash[:plneno_dph] = plneno_dph if raw.key? :PlnenoDPH

        hash
      end
    end
  end
end