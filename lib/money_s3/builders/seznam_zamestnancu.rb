require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'

module MoneyS3
  module Builders
    class SeznamZamestnancu
      include BaseBuilder

      attr_accessor :zamestnanec

      def builder
        root = Ox::Element.new(element_name)

        if zamestnanec
          zamestnanec.each { |i| root << ZamestnanecType.new(i, 'Zamestnanec').builder }
        end

        root
      end
    end
  end
end