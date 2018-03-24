require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_listek'

module MoneyS3
  module Builders
    class SeznamKurzListku
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :kurz_listek
          data[:kurz_listek].each { |i| root << KurzListek.new('KurzListek', i).builder }
        end

        root
      end
    end
  end
end