module MoneyS3
  module Parsers
    class PolInvDoklType
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def zkrat
        at 'Zkrat'
      end

      def slupina
        at 'Slupina'
      end

      def mj
        at 'MJ'
      end

      def mn_inv
        at 'MnInv'
      end

      def seznam_vc
        array_of_at(VyrobniCislo, ['SeznamVC', 'VyrobniCislo'])
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def slozeni
        array_of_at(SubpolInvDType, ['Slozeni', 'SubPolozka'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:slupina] = slupina if has? 'Slupina'
        hash[:mj] = mj if has? 'MJ'
        hash[:mn_inv] = mn_inv if has? 'MnInv'
        hash[:seznam_vc] = seznam_vc.map(&:to_h_with_attrs) if has? 'SeznamVC'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:slozeni] = slozeni.map(&:to_h_with_attrs) if has? 'Slozeni'

        hash
      end
    end
  end
end