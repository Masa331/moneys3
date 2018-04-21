module MoneyS3
  module Builders
    class PolInvDoklType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Slupina', data[:slupina]) if data.key? :slupina
        root << build_element('MJ', data[:mj]) if data.key? :mj
        root << build_element('MnInv', data[:mn_inv]) if data.key? :mn_inv
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