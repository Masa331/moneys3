module MoneyS3
  module Builders
    class Doklad
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('Cislo', data[:cislo]) if data.key? :cislo
        root << build_element('GUID', data[:guid]) if data.key? :guid
        root << build_element('PrijatDokl', data[:prijat_dokl]) if data.key? :prijat_dokl
        root << build_element('VarSymbol', data[:var_symbol]) if data.key? :var_symbol
        root << build_element('Vystaveno', data[:vystaveno]) if data.key? :vystaveno
        root << build_element('DatUcPr', data[:dat_uc_pr]) if data.key? :dat_uc_pr
        root << build_element('PlnenoDPH', data[:plneno_dph]) if data.key? :plneno_dph

        root
      end
    end
  end
end