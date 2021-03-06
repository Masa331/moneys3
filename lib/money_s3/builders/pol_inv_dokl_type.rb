module MoneyS3
  module Builders
    class PolInvDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Slupina', data[:slupina], data[:slupina_attributes]) if data.key? :slupina
        root << build_element('MJ', data[:mj], data[:mj_attributes]) if data.key? :mj
        root << build_element('MnInv', data[:mn_inv], data[:mn_inv_attributes]) if data.key? :mn_inv
        if data.key? :seznam_vc
          element = Ox::Element.new('SeznamVC')
          data[:seznam_vc].each { |i| element << VyrobniCislo.new('VyrobniCislo', i).builder }
          root << element
        end
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :slozeni
          element = Ox::Element.new('Slozeni')
          data[:slozeni].each { |i| element << SubpolInvDType.new('SubPolozka', i).builder }
          root << element
        end

        root
      end
    end
  end
end