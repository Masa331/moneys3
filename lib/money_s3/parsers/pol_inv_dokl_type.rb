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
        { popis: popis,
          zkrat: zkrat,
          slupina: slupina,
          mj: mj,
          mn_inv: mn_inv,
          sklad: sklad.to_h,
          km_karta: km_karta.to_h,
          seznam_vc: seznam_vc.map(&:to_h),
          slozeni: slozeni.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end