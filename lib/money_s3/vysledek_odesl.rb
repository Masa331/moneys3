require 'money_s3/base_element'

module MoneyS3
  class VysledekOdesl
    include BaseElement

    def chyba
      at :Chyba
    end

    def varovani
      array_of_at(String, [:Varovani])
    end

    def to_h
      { chyba: chyba,
        varovani: varovani
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
