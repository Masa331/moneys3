require 'money_s3/builders/base_builder'
require 'money_s3/builders/doklad'

module MoneyS3
  module Builders
    class VazbaType
      include BaseBuilder

      attr_accessor :typ, :pod_typ, :doklad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('PodTyp') << pod_typ) if pod_typ
        root << Doklad.new(doklad, 'Doklad').builder if doklad

        root
      end
    end
  end
end