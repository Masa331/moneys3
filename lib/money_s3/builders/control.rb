module MoneyS3
  module Builders
    class Control
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :cislo_davky
          root << MessageRootType.new('CisloDavky', data[:cislo_davky]).builder
        end
        if data.key? :kod_agendy
          root << MessageRootType.new('KodAgendy', data[:kod_agendy]).builder
        end
        if data.key? :hosp_rok
          root << MessageRootType.new('HospRok', data[:hosp_rok]).builder
        end

        root
      end
    end
  end
end