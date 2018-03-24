require 'money_s3/builders/base_builder'
require 'money_s3/builders/stav_zasoby_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class KomponentaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :poc_mj
          element = Ox::Element.new('PocMJ')
          element << attributes[:poc_mj] if attributes[:poc_mj]
          root << element
        end

        if attributes.key? :stav_zasoby
          root << StavZasobyType.new(attributes[:stav_zasoby], 'StavZasoby').builder
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        root
      end
    end
  end
end