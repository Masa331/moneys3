module MoneyS3
  module Builders
    class Doklad
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('Cislo', data[:cislo], data[:cislo_attributes]) if data.key? :cislo
        root << build_element('GUID', data[:guid], data[:guid_attributes]) if data.key? :guid
        root << build_element('PrijatDokl', data[:prijat_dokl], data[:prijat_dokl_attributes]) if data.key? :prijat_dokl
        root << build_element('VarSymbol', data[:var_symbol], data[:var_symbol_attributes]) if data.key? :var_symbol
        root << build_element('Vystaveno', data[:vystaveno], data[:vystaveno_attributes]) if data.key? :vystaveno
        root << build_element('DatUcPr', data[:dat_uc_pr], data[:dat_uc_pr_attributes]) if data.key? :dat_uc_pr
        root << build_element('PlnenoDPH', data[:plneno_dph], data[:plneno_dph_attributes]) if data.key? :plneno_dph

        root
      end
    end
  end
end