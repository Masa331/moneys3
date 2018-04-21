module MoneyS3
  module Builders
    class Data3
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :uc_pohyb
          root << UcPohybType.new('UcPohyb', data[:uc_pohyb]).builder
        end

        root
      end
    end
  end
end