module MoneyS3
  module Parsers
    class CenovaHladinaType
      include ParserCore::BaseParser
      include Groups::DefiniceCeny

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def skup
        at 'Skup'
      end

      def skup_attributes
        attributes_at 'Skup'
      end

      def ceny
        at 'Ceny'
      end

      def ceny_attributes
        attributes_at 'Ceny'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:mena] = mena.to_h if has? 'Mena'
        hash[:skup] = skup if has? 'Skup'
        hash[:skup_attributes] = skup_attributes if has? 'Skup'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:ceny_attributes] = ceny_attributes if has? 'Ceny'

        mega.inject(hash) { |memo, r| memo.merge r }
      end
    end
  end
end