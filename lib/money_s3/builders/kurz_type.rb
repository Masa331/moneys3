module MoneyS3
  module Builders
    class KurzType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Banka', data[:banka]) if data.key? :banka
        root << build_element('Datum', data[:datum]) if data.key? :datum
        root << build_element('Kod', data[:kod]) if data.key? :kod
        root << build_element('Zeme', data[:zeme]) if data.key? :zeme
        root << build_element('Mnozstvi', data[:mnozstvi]) if data.key? :mnozstvi
        root << build_element('NBStred', data[:nb_stred]) if data.key? :nb_stred
        root << build_element('DevizyNakup', data[:devizy_nakup]) if data.key? :devizy_nakup
        root << build_element('DevizyProdej', data[:devizy_prodej]) if data.key? :devizy_prodej
        root << build_element('ValutyNakup', data[:valuty_nakup]) if data.key? :valuty_nakup
        root << build_element('ValutyProdej', data[:valuty_prodej]) if data.key? :valuty_prodej

        root
      end
    end
  end
end