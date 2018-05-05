module MoneyS3
  module Builders
    class ClenDPHType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('DatumOd', data[:datum_od]) if data.key? :datum_od
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Kolonka', data[:kolonka]) if data.key? :kolonka
        root << build_element('KodPlneni', data[:kod_plneni]) if data.key? :kod_plneni
        root << build_element('BezOdpoctu', data[:bez_odpoctu]) if data.key? :bez_odpoctu
        root << build_element('NoKoef', data[:no_koef]) if data.key? :no_koef
        root << build_element('Majetek', data[:majetek]) if data.key? :majetek
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end