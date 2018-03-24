require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'

module MoneyS3
  module Builders
    class SeznamZamestnancu
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zamestnanec
          attributes[:zamestnanec].each { |i| root << ZamestnanecType.new(i, 'Zamestnanec').builder }
        end

        root
      end
    end
  end
end