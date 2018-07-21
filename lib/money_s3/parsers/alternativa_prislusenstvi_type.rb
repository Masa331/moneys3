module MoneyS3
  module Parsers
    class AlternativaPrislusenstviType
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def poc_mj
        at 'PocMJ'
      end

      def poc_mj_attributes
        attributes_at 'PocMJ'
      end

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def druh_komp
        at 'DruhKomp'
      end

      def druh_komp_attributes
        attributes_at 'DruhKomp'
      end

      def symetric
        at 'Symetric'
      end

      def symetric_attributes
        attributes_at 'Symetric'
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:poc_mj] = poc_mj if has? 'PocMJ'
        hash[:poc_mj_attributes] = poc_mj_attributes if has? 'PocMJ'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:druh_komp] = druh_komp if has? 'DruhKomp'
        hash[:druh_komp_attributes] = druh_komp_attributes if has? 'DruhKomp'
        hash[:symetric] = symetric if has? 'Symetric'
        hash[:symetric_attributes] = symetric_attributes if has? 'Symetric'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'

        hash
      end
    end
  end
end