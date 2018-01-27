require 'money_s3/base_element'

module MoneyS3
  class VyrobniCisloType
    include BaseElement

    def vyrobni_cis
      at :VyrobniCis
    end

    def datum_vyrob
      at :DatumVyrob
    end

    def carovy_kod
      at :CarovyKod
    end
  end
end
