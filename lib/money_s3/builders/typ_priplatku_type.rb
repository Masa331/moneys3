module MoneyS3
  module Builders
    class TypPriplatkuType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkratka', data[:zkratka], data[:zkratka_attributes]) if data.key? :zkratka
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('Sazba', data[:sazba], data[:sazba_attributes]) if data.key? :sazba
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('AutoLoad', data[:auto_load], data[:auto_load_attributes]) if data.key? :auto_load
        root << build_element('PrNahOff', data[:pr_nah_off], data[:pr_nah_off_attributes]) if data.key? :pr_nah_off

        root
      end
    end
  end
end