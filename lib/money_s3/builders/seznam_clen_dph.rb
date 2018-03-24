require 'money_s3/builders/base_builder'
require 'money_s3/builders/clen_dph'

module MoneyS3
  module Builders
    class SeznamClenDPH
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :clen_dph
          data[:clen_dph].each { |i| root << ClenDPH.new('ClenDPH', i).builder }
        end

        root
      end
    end
  end
end