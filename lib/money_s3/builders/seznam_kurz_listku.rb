module MoneyS3
  module Builders
    class SeznamKurzListku < SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :kurz_listek
          data[:kurz_listek].each { |i| root << KurzListek.new('KurzListek', i).builder }
        end

        root
      end
    end
  end
end