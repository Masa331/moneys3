require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'

module MoneyS3
  module Builders
    class SeznamZamestnancu
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :zamestnanec
          data[:zamestnanec].each { |i| root << ZamestnanecType.new('Zamestnanec', i).builder }
        end

        root
      end
    end
  end
end