require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VyrobniCislo
      include BaseParser

      def vyrobni_cis
        at :VyrobniCis
      end

      def dat_vyr
        at :DatVyr
      end

      def car_kod
        at :CarKod
      end

      def to_h
        hash = {}

        hash[:vyrobni_cis] = vyrobni_cis if raw.key? :VyrobniCis
        hash[:dat_vyr] = dat_vyr if raw.key? :DatVyr
        hash[:car_kod] = car_kod if raw.key? :CarKod

        hash
      end
    end
  end
end