require 'money_s3/base_element'
require 'money_s3/adresa_type'
require 'money_s3/telefon_type'

module MoneyS3
  class MojeFirmaType
    include BaseElement

    def nazev
      at :Nazev
    end

    def obch_nazev
      at :ObchNazev
    end

    def fakt_nazev
      at :FaktNazev
    end

    def e_mail
      at :EMail
    end

    def www
      at :WWW
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

    def banka
      at :Banka
    end

    def ucet
      at :Ucet
    end

    def kod_banky
      at :KodBanky
    end

    def kod_partn
      at :KodPartn
    end

    def fyz_osoba
      at :FyzOsoba
    end

    def mena_symb
      at :MenaSymb
    end

    def mena_kod
      at :MenaKod
    end

    def adresa
      submodel_at(AdresaType, :Adresa)
    end

    def obch_adresa
      submodel_at(AdresaType, :ObchAdresa)
    end

    def fakt_adresa
      submodel_at(AdresaType, :FaktAdresa)
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

    def to_h
      { nazev: nazev,
        obch_nazev: obch_nazev,
        fakt_nazev: fakt_nazev,
        e_mail: e_mail,
        www: www,
        ico: ico,
        dic: dic,
        dicsk: dicsk,
        banka: banka,
        ucet: ucet,
        kod_banky: kod_banky,
        kod_partn: kod_partn,
        fyz_osoba: fyz_osoba,
        mena_symb: mena_symb,
        mena_kod: mena_kod,
        adresa: adresa.to_h,
        obch_adresa: obch_adresa.to_h,
        fakt_adresa: fakt_adresa.to_h,
        tel: tel.to_h,
        fax: fax.to_h,
        mobil: mobil.to_h
      }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
