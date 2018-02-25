require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'
require 'money_s3/isdoc'
require 'money_s3/eshop'

module MoneyS3
  class DokladFirmaType
    include BaseElement

    def obch_nazev
      at :ObchNazev
    end

    def fakt_nazev
      at :FaktNazev
    end

    def ico
      at :ICO
    end

    def dic
      at :DIC
    end

    def dicsk
      at :DICSK
    end

    def guid
      at :GUID
    end

    def nazev
      at :Nazev
    end

    def e_mail
      at :EMail
    end

    def www
      at :WWW
    end

    def platce_dph
      at :PlatceDPH
    end

    def fyz_osoba
      at :FyzOsoba
    end

    def banka
      at :Banka
    end

    def ucet
      at :Ucet
    end

    def kod_banky
      at :KodBanky
    end

    def v_symb
      at :VSymb
    end

    def spec_sym
      at :SpecSym
    end

    def kod_partn
      at :KodPartn
    end

    def obch_adresa
      submodel_at(AdresaType, :ObchAdresa)
    end

    def fakt_adresa
      submodel_at(AdresaType, :FaktAdresa)
    end

    def adresa
      submodel_at(AdresaType, :Adresa)
    end

    def tel
      submodel_at(TelefonType, :Tel)
    end

    def fax
      submodel_at(TelefonType, :Fax)
    end

    def mobil
      submodel_at(TelefonType, :Mobil)
    end

    def isdoc
      submodel_at(ISDOC, :ISDOC)
    end

    def eshop
      submodel_at(Eshop, :eshop)
    end

    def to_h
      { obch_nazev: obch_nazev,
        fakt_nazev: fakt_nazev,
        ico: ico,
        dic: dic,
        dicsk: dicsk,
        guid: guid,
        nazev: nazev,
        e_mail: e_mail,
        www: www,
        platce_dph: platce_dph,
        fyz_osoba: fyz_osoba,
        banka: banka,
        ucet: ucet,
        kod_banky: kod_banky,
        v_symb: v_symb,
        spec_sym: spec_sym,
        kod_partn: kod_partn,
        obch_adresa: obch_adresa.to_h,
        fakt_adresa: fakt_adresa.to_h,
        adresa: adresa.to_h,
        tel: tel.to_h,
        fax: fax.to_h,
        mobil: mobil.to_h,
        isdoc: isdoc.to_h,
        eshop: eshop.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
