require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VyrobniCisloType
      include BaseParser

      def vyrobni_cis
        at 'VyrobniCis'
      end

      def datum_vyrob
        at 'DatumVyrob'
      end

      def carovy_kod
        at 'CarovyKod'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:datum_vyrob] = datum_vyrob if has? 'DatumVyrob'
        hash[:carovy_kod] = carovy_kod if has? 'CarovyKod'

        hash
      end
    end
  end
end