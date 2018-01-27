require 'money_s3/base_element'

module MoneyS3
  class Dokumenty
    include BaseElement

    def dokument
      at :Dokument
    end
  end
end
