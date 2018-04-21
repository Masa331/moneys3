module MoneyS3
  module Builders
    class Data2
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :fakt_vyd_dpp
          root << FakturaType.new('FaktVyd_DPP', data[:fakt_vyd_dpp]).builder
        end
        if data.key? :fakt_prij_dpp
          root << FakturaType.new('FaktPrij_DPP', data[:fakt_prij_dpp]).builder
        end

        root
      end
    end
  end
end