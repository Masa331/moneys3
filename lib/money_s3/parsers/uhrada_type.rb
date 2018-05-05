module MoneyS3
  module Parsers
    class UhradaType
      include ParserCore::BaseParser

      def doklad_uhr
        submodel_at(DoklRefType, 'DokladUhr')
      end

      def doklad_hraz
        submodel_at(DokladHraz, 'DokladHraz')
      end

      def prijem
        at 'Prijem'
      end

      def poradi
        at 'Poradi'
      end

      def rok_poradi
        at 'RokPoradi'
      end

      def datum
        at 'Datum'
      end

      def dat_upl_dph
        at 'DatUplDPH'
      end

      def castka
        at 'Castka'
      end

      def valuty_hraz
        submodel_at(ValutyHraz, 'ValutyHraz')
      end

      def valuty_uhr
        submodel_at(ValutyUhr, 'ValutyUhr')
      end

      def kurz_rozd
        submodel_at(KurzRozd, 'KurzRozd')
      end

      def zpusob_uhr
        at 'ZpusobUhr'
      end

      def platidlo
        at 'Platidlo'
      end

      def seznam_pd_uhrad
        array_of_at(UhradaPduhrada, ['SeznamPDUhrad', 'Uhrada_PDUhrada'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:doklad_uhr] = doklad_uhr.to_h_with_attrs if has? 'DokladUhr'
        hash[:doklad_hraz] = doklad_hraz.to_h_with_attrs if has? 'DokladHraz'
        hash[:prijem] = prijem if has? 'Prijem'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:rok_poradi] = rok_poradi if has? 'RokPoradi'
        hash[:datum] = datum if has? 'Datum'
        hash[:dat_upl_dph] = dat_upl_dph if has? 'DatUplDPH'
        hash[:castka] = castka if has? 'Castka'
        hash[:valuty_hraz] = valuty_hraz.to_h_with_attrs if has? 'ValutyHraz'
        hash[:valuty_uhr] = valuty_uhr.to_h_with_attrs if has? 'ValutyUhr'
        hash[:kurz_rozd] = kurz_rozd.to_h_with_attrs if has? 'KurzRozd'
        hash[:zpusob_uhr] = zpusob_uhr if has? 'ZpusobUhr'
        hash[:platidlo] = platidlo if has? 'Platidlo'
        hash[:seznam_pd_uhrad] = seznam_pd_uhrad.map(&:to_h_with_attrs) if has? 'SeznamPDUhrad'

        hash
      end
    end
  end
end