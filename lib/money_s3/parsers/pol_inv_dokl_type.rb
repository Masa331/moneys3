module MoneyS3
  module Parsers
    class PolInvDoklType
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def slupina
        at 'Slupina'
      end

      def slupina_attributes
        attributes_at 'Slupina'
      end

      def mj
        at 'MJ'
      end

      def mj_attributes
        attributes_at 'MJ'
      end

      def mn_inv
        at 'MnInv'
      end

      def mn_inv_attributes
        attributes_at 'MnInv'
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

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:slupina] = slupina if has? 'Slupina'
        hash[:slupina_attributes] = slupina_attributes if has? 'Slupina'
        hash[:mj] = mj if has? 'MJ'
        hash[:mj_attributes] = mj_attributes if has? 'MJ'
        hash[:mn_inv] = mn_inv if has? 'MnInv'
        hash[:mn_inv_attributes] = mn_inv_attributes if has? 'MnInv'
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if has? 'SeznamVC'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:slozeni] = slozeni.map(&:to_h) if has? 'Slozeni'

        hash
      end
    end
  end
end