require 'money_s3/builders/base_builder'
require 'money_s3/builders/stav_zasoby_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class KomponentaType
      include BaseBuilder

      attr_accessor :poc_mj, :stav_zasoby, :km_karta, :sklad

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('PocMJ') << poc_mj) if poc_mj
        root << StavZasobyType.new(stav_zasoby, 'StavZasoby').builder if stav_zasoby
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta
        root << SkladType.new(sklad, 'Sklad').builder if sklad

        root
      end
    end
  end
end