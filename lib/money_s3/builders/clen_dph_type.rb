module MoneyS3
  module Builders
    class ClenDPHType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('DatumOd', data[:datum_od], data[:datum_od_attributes]) if data.key? :datum_od
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Kolonka', data[:kolonka], data[:kolonka_attributes]) if data.key? :kolonka
        root << build_element('KodPlneni', data[:kod_plneni], data[:kod_plneni_attributes]) if data.key? :kod_plneni
        root << build_element('BezOdpoctu', data[:bez_odpoctu], data[:bez_odpoctu_attributes]) if data.key? :bez_odpoctu
        root << build_element('NoKoef', data[:no_koef], data[:no_koef_attributes]) if data.key? :no_koef
        root << build_element('Majetek', data[:majetek], data[:majetek_attributes]) if data.key? :majetek
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end