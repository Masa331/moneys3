module MoneyS3
  module Builders
    class TypPriplatkuType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkratka', data[:zkratka]) if data.key? :zkratka
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('Sazba', data[:sazba]) if data.key? :sazba
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('AutoLoad', data[:auto_load]) if data.key? :auto_load
        root << build_element('PrNahOff', data[:pr_nah_off]) if data.key? :pr_nah_off

        root
      end
    end
  end
end