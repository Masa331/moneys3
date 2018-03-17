require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Doklad
      include BaseBuilder

      attr_accessor :druh, :cislo, :guid, :prijat_dokl, :var_symbol, :vystaveno, :dat_uc_pr, :plneno_dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('Cislo') << cislo) if cislo
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('PrijatDokl') << prijat_dokl) if prijat_dokl
        root << (Ox::Element.new('VarSymbol') << var_symbol) if var_symbol
        root << (Ox::Element.new('Vystaveno') << vystaveno) if vystaveno
        root << (Ox::Element.new('DatUcPr') << dat_uc_pr) if dat_uc_pr
        root << (Ox::Element.new('PlnenoDPH') << plneno_dph) if plneno_dph

        root
      end
    end
  end
end