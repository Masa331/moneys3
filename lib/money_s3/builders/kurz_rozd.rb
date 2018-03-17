require 'money_s3/builders/base_builder'
require 'money_s3/builders/dokl_ref_type'

module MoneyS3
  module Builders
    class KurzRozd
      include BaseBuilder

      attr_accessor :typ, :preceneni, :castka, :kr_poradi, :doklad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Preceneni') << preceneni) if preceneni
        root << (Ox::Element.new('Castka') << castka) if castka
        root << (Ox::Element.new('KRPoradi') << kr_poradi) if kr_poradi
        root << DoklRefType.new(doklad, 'Doklad').builder if doklad

        root
      end
    end
  end
end