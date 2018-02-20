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

    def to_h
      { vyrobni_cis: vyrobni_cis,
        datum_vyrob: datum_vyrob,
        carovy_kod: carovy_kod
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
