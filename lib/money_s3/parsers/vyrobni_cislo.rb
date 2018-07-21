module MoneyS3
  module Parsers
    class VyrobniCislo
      include ParserCore::BaseParser

      def vyrobni_cis
        at 'VyrobniCis'
      end

      def vyrobni_cis_attributes
        attributes_at 'VyrobniCis'
      end

      def dat_vyr
        at 'DatVyr'
      end

      def dat_vyr_attributes
        attributes_at 'DatVyr'
      end

      def car_kod
        at 'CarKod'
      end

      def car_kod_attributes
        attributes_at 'CarKod'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:vyrobni_cis_attributes] = vyrobni_cis_attributes if has? 'VyrobniCis'
        hash[:dat_vyr] = dat_vyr if has? 'DatVyr'
        hash[:dat_vyr_attributes] = dat_vyr_attributes if has? 'DatVyr'
        hash[:car_kod] = car_kod if has? 'CarKod'
        hash[:car_kod_attributes] = car_kod_attributes if has? 'CarKod'

        hash
      end
    end
  end
end