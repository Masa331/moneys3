require 'money_s3/base_element'

module MoneyS3
  class Doklad
    include BaseElement

    def druh
      at :Druh
    end

    def cislo
      at :Cislo
    end

    def guid
      at :GUID
    end

    def prijat_dokl
      at :PrijatDokl
    end

    def var_symbol
      at :VarSymbol
    end

    def vystaveno
      at :Vystaveno
    end

    def dat_uc_pr
      at :DatUcPr
    end

    def plneno_dph
      at :PlnenoDPH
    end

    def to_h
      { druh: druh,
        cislo: cislo,
        guid: guid,
        prijat_dokl: prijat_dokl,
        var_symbol: var_symbol,
        vystaveno: vystaveno,
        dat_uc_pr: dat_uc_pr,
        plneno_dph: plneno_dph
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
