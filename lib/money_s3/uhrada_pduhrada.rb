require 'money_s3/base_element'

module MoneyS3
  class UhradaPduhrada
    include BaseElement

    def poradi
      at :Poradi
    end

    def kontace
      at :Kontace
    end

    def stredisko
      at :Stredisko
    end

    def zakazka
      at :Zakazka
    end

    def cinnost
      at :Cinnost
    end

    def zaklad
      at :Zaklad
    end

    def dphzs
      at :DPHZS
    end

    def dphss
      at :DPHSS
    end

    def wl_zaklady
      at :WLZaklady
    end

    def wldph1
      at :WLDPH1
    end

    def wldph2
      at :WLDPH2
    end

    def to_h
      { poradi: poradi,
        kontace: kontace,
        stredisko: stredisko,
        zakazka: zakazka,
        cinnost: cinnost,
        zaklad: zaklad,
        dphzs: dphzs,
        dphss: dphss,
        wl_zaklady: wl_zaklady,
        wldph1: wldph1,
        wldph2: wldph2
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
