require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class KurzType
      include BaseBuilder

      attr_accessor :banka, :datum, :kod, :zeme, :mnozstvi, :nb_stred, :devizy_nakup, :devizy_prodej, :valuty_nakup, :valuty_prodej

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Banka') << banka) if banka
        root << (Ox::Element.new('Datum') << datum) if datum
        root << (Ox::Element.new('Kod') << kod) if kod
        root << (Ox::Element.new('Zeme') << zeme) if zeme
        root << (Ox::Element.new('Mnozstvi') << mnozstvi) if mnozstvi
        root << (Ox::Element.new('NBStred') << nb_stred) if nb_stred
        root << (Ox::Element.new('DevizyNakup') << devizy_nakup) if devizy_nakup
        root << (Ox::Element.new('DevizyProdej') << devizy_prodej) if devizy_prodej
        root << (Ox::Element.new('ValutyNakup') << valuty_nakup) if valuty_nakup
        root << (Ox::Element.new('ValutyProdej') << valuty_prodej) if valuty_prodej

        root
      end
    end
  end
end