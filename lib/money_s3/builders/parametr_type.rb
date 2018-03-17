require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ParametrType
      include BaseBuilder

      attr_accessor :id, :nazev, :druh, :typ, :mj, :uziv_code, :hodnoty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('ID') << id) if id
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('MJ') << mj) if mj
        root << (Ox::Element.new('UzivCode') << uziv_code) if uziv_code
        root << (Ox::Element.new('Hodnoty') << hodnoty) if hodnoty

        root
      end
    end
  end
end