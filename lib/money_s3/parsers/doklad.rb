module MoneyS3
  module Parsers
    class Doklad
      include ParserCore::BaseParser

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def cislo
        at 'Cislo'
      end

      def cislo_attributes
        attributes_at 'Cislo'
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def prijat_dokl_attributes
        attributes_at 'PrijatDokl'
      end

      def var_symbol
        at 'VarSymbol'
      end

      def var_symbol_attributes
        attributes_at 'VarSymbol'
      end

      def vystaveno
        at 'Vystaveno'
      end

      def vystaveno_attributes
        attributes_at 'Vystaveno'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_uc_pr_attributes
        attributes_at 'DatUcPr'
      end

      def plneno_dph
        at 'PlnenoDPH'
      end

      def plneno_dph_attributes
        attributes_at 'PlnenoDPH'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:cislo] = cislo if has? 'Cislo'
        hash[:cislo_attributes] = cislo_attributes if has? 'Cislo'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:prijat_dokl_attributes] = prijat_dokl_attributes if has? 'PrijatDokl'
        hash[:var_symbol] = var_symbol if has? 'VarSymbol'
        hash[:var_symbol_attributes] = var_symbol_attributes if has? 'VarSymbol'
        hash[:vystaveno] = vystaveno if has? 'Vystaveno'
        hash[:vystaveno_attributes] = vystaveno_attributes if has? 'Vystaveno'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_uc_pr_attributes] = dat_uc_pr_attributes if has? 'DatUcPr'
        hash[:plneno_dph] = plneno_dph if has? 'PlnenoDPH'
        hash[:plneno_dph_attributes] = plneno_dph_attributes if has? 'PlnenoDPH'

        hash
      end
    end
  end
end