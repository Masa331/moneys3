require 'money_s3/base_element'
require 'money_s3/konfigurace'
require 'money_s3/definice_ceny'
require 'money_s3/komponenta_type'
require 'money_s3/parametr_karta_type'

module MoneyS3
  class KmKartaType
    include BaseElement

    def popis
      at :Popis
    end

    def zkrat
      at :Zkrat
    end

    def pozn
      at :Pozn
    end

    def mj
      at :MJ
    end

    def uziv_code
      at :UzivCode
    end

    def guid
      at :GUID
    end

    def katalog
      at :Katalog
    end

    def bar_code
      at :BarCode
    end

    def bc_typ
      at :BCTyp
    end

    def typ_zar_doby
      at :TypZarDoby
    end

    def zar_doba
      at :ZarDoba
    end

    def ev_druhy
      at :EvDruhy
    end

    def ev_vyr_cis
      at :EvVyrCis
    end

    def des_mist
      at :DesMist
    end

    def obrazek
      at :Obrazek
    end

    def obrazek2
      at :Obrazek2
    end

    def zarovnat
      at :Zarovnat
    end

    def zarovnat2
      at :Zarovnat2
    end

    def ceny
      at :Ceny
    end

    def nastav
      at :Nastav
    end

    def popis1
      at :Popis1
    end

    def pozn1
      at :Pozn1
    end

    def popis2
      at :Popis2
    end

    def pozn2
      at :Pozn2
    end

    def popis3
      at :Popis3
    end

    def pozn3
      at :Pozn3
    end

    def hmotnost
      at :Hmotnost
    end

    def objem
      at :Objem
    end

    def kod_kn
      at :KodKN
    end

    def predm_pln
      at :PredmPln
    end

    def kod_statu
      at :KodStatu
    end

    def typ_karty
      at :TypKarty
    end

    def zboz_kuch
      at :ZbozKuch
    end

    def i_dokl_pol
      at :iDoklPol
    end

    def i_dokl_agend
      at :iDoklAgend
    end

    def konfigurace
      submodel_at(Konfigurace, :konfigurace)
    end

    def definice_ceny
      submodel_at(DefiniceCeny, :definiceCeny)
    end

    def slozeni
      array_of_at(KomponentaType, [:Slozeni, :Komponenta])
    end

    def seznam_parametru_karty
      array_of_at(ParametrKartaType, [:SeznamParametruKarty, :ParametrKarty])
    end

    def dokumenty
      array_of_at(String, [:Dokumenty, :Dokument])
    end
  end
end
