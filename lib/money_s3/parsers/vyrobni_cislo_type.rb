module MoneyS3
  module Parsers
    class VyrobniCisloType
      include ParserCore::BaseParser

      def vyrobni_cis
        at 'VyrobniCis'
      end

      def vyrobni_cis_attributes
        attributes_at 'VyrobniCis'
      end

      def datum_vyrob
        at 'DatumVyrob'
      end

      def datum_vyrob_attributes
        attributes_at 'DatumVyrob'
      end

      def carovy_kod
        at 'CarovyKod'
      end

      def carovy_kod_attributes
        attributes_at 'CarovyKod'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:vyrobni_cis] = vyrobni_cis if has? 'VyrobniCis'
        hash[:vyrobni_cis_attributes] = vyrobni_cis_attributes if has? 'VyrobniCis'
        hash[:datum_vyrob] = datum_vyrob if has? 'DatumVyrob'
        hash[:datum_vyrob_attributes] = datum_vyrob_attributes if has? 'DatumVyrob'
        hash[:carovy_kod] = carovy_kod if has? 'CarovyKod'
        hash[:carovy_kod_attributes] = carovy_kod_attributes if has? 'CarovyKod'

        hash
      end
    end
  end
end