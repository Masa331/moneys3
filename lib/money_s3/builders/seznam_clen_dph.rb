require 'money_s3/builders/base_builder'
require 'money_s3/builders/clen_dph'

module MoneyS3
  module Builders
    class SeznamClenDPH
      include BaseBuilder

      attr_accessor :clen_dph

      def builder
        root = Ox::Element.new(element_name)

        if clen_dph
          clen_dph.each { |i| root << ClenDPH.new(i, 'ClenDPH').builder }
        end

        root
      end
    end
  end
end