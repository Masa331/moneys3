module MoneyS3
  module Builders
    class KurzType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Banka', data[:banka], data[:banka_attributes]) if data.key? :banka
        root << build_element('Datum', data[:datum], data[:datum_attributes]) if data.key? :datum
        root << build_element('Kod', data[:kod], data[:kod_attributes]) if data.key? :kod
        root << build_element('Zeme', data[:zeme], data[:zeme_attributes]) if data.key? :zeme
        root << build_element('Mnozstvi', data[:mnozstvi], data[:mnozstvi_attributes]) if data.key? :mnozstvi
        root << build_element('NBStred', data[:nb_stred], data[:nb_stred_attributes]) if data.key? :nb_stred
        root << build_element('DevizyNakup', data[:devizy_nakup], data[:devizy_nakup_attributes]) if data.key? :devizy_nakup
        root << build_element('DevizyProdej', data[:devizy_prodej], data[:devizy_prodej_attributes]) if data.key? :devizy_prodej
        root << build_element('ValutyNakup', data[:valuty_nakup], data[:valuty_nakup_attributes]) if data.key? :valuty_nakup
        root << build_element('ValutyProdej', data[:valuty_prodej], data[:valuty_prodej_attributes]) if data.key? :valuty_prodej

        root
      end
    end
  end
end