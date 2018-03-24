require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/sklad_type'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/vyrobni_cislo'
require 'money_s3/parsers/subpol_inv_d_type'

module MoneyS3
  module Parsers
    class PolInvDoklType
      include BaseParser

      def popis
        at :Popis
      end

      def zkrat
        at :Zkrat
      end

      def slupina
        at :Slupina
      end

      def mj
        at :MJ
      end

      def mn_inv
        at :MnInv
      end

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def seznam_vc
        array_of_at(VyrobniCislo, [:SeznamVC, :VyrobniCislo])
      end

      def slozeni
        array_of_at(SubpolInvDType, [:Slozeni, :SubPolozka])
      end

      def to_h
        hash = {}

        hash[:popis] = popis if raw.key? :Popis
        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:slupina] = slupina if raw.key? :Slupina
        hash[:mj] = mj if raw.key? :MJ
        hash[:mn_inv] = mn_inv if raw.key? :MnInv
        hash[:sklad] = sklad.to_h if raw.key? :Sklad
        hash[:km_karta] = km_karta.to_h if raw.key? :KmKarta
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if raw.key? :SeznamVC
        hash[:slozeni] = slozeni.map(&:to_h) if raw.key? :Slozeni

        hash
      end
    end
  end
end