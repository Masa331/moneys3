require 'money_s3/builders/base_builder'
require 'money_s3/builders/clen_dph'

module MoneyS3
  module Builders
    class SeznamClenDPH
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :clen_dph
          attributes[:clen_dph].each { |i| root << ClenDPH.new(i, 'ClenDPH').builder }
        end

        root
      end
    end
  end
end