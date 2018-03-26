require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Doklad
      include BaseParser

      def druh
        at 'Druh'
      end

      def cislo
        at 'Cislo'
      end

      def guid
        at 'GUID'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def vystaveno
        at 'Vystaveno'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def plneno_dph
        at 'PlnenoDPH'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:druh] = druh if has? 'Druh'
        hash[:cislo] = cislo if has? 'Cislo'
        hash[:guid] = guid if has? 'GUID'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:plneno_dph] = plneno_dph if has? 'PlnenoDPH'

        hash
      end
    end
  end
end