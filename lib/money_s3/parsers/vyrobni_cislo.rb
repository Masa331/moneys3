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
        { vyrobni_cis: vyrobni_cis,
          dat_vyr: dat_vyr,
          car_kod: car_kod
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end