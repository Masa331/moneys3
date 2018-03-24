require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Doklad
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :cislo
          element = Ox::Element.new('Cislo')
          element << attributes[:cislo] if attributes[:cislo]
          root << element
        end

        if attributes.key? :guid
          element = Ox::Element.new('GUID')
          element << attributes[:guid] if attributes[:guid]
          root << element
        end

        if attributes.key? :prijat_dokl
          element = Ox::Element.new('PrijatDokl')
          element << attributes[:prijat_dokl] if attributes[:prijat_dokl]
          root << element
        end

        if attributes.key? :var_symbol
          element = Ox::Element.new('VarSymbol')
          element << attributes[:var_symbol] if attributes[:var_symbol]
          root << element
        end

        if attributes.key? :vystaveno
          element = Ox::Element.new('Vystaveno')
          element << attributes[:vystaveno] if attributes[:vystaveno]
          root << element
        end

        if attributes.key? :dat_uc_pr
          element = Ox::Element.new('DatUcPr')
          element << attributes[:dat_uc_pr] if attributes[:dat_uc_pr]
          root << element
        end

        if attributes.key? :plneno_dph
          element = Ox::Element.new('PlnenoDPH')
          element << attributes[:plneno_dph] if attributes[:plneno_dph]
          root << element
        end

        root
      end
    end
  end
end