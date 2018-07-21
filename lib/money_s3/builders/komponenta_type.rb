module MoneyS3
  module Builders
    class KomponentaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('PocMJ', data[:poc_mj], data[:poc_mj_attributes]) if data.key? :poc_mj
        if data.key? :stav_zasoby
          root << StavZasobyType.new('StavZasoby', data[:stav_zasoby]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end

        root
      end
    end
  end
end