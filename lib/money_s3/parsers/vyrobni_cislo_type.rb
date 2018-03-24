require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VyrobniCisloType
      include BaseParser

      def vyrobni_cis
        at :VyrobniCis
      end

      def datum_vyrob
        at :DatumVyrob
      end

      def carovy_kod
        at :CarovyKod
      end

      def to_h
        hash = {}

        hash[:vyrobni_cis] = vyrobni_cis if raw.key? :VyrobniCis
        hash[:datum_vyrob] = datum_vyrob if raw.key? :DatumVyrob
        hash[:carovy_kod] = carovy_kod if raw.key? :CarovyKod

        hash
      end
    end
  end
end