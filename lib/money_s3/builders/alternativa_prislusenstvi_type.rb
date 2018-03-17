require 'money_s3/builders/base_builder'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class AlternativaPrislusenstviType
      include BaseBuilder

      attr_accessor :popis, :poc_mj, :poradi, :druh_komp, :symetric, :km_karta, :sklad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('PocMJ') << poc_mj) if poc_mj
        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('DruhKomp') << druh_komp) if druh_komp
        root << (Ox::Element.new('Symetric') << symetric) if symetric
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta
        root << SkladType.new(sklad, 'Sklad').builder if sklad

        root
      end
    end
  end
end