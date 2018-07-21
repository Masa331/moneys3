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

      def prijem_attributes
        attributes_at 'Prijem'
      end

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def rok_poradi
        at 'RokPoradi'
      end

      def rok_poradi_attributes
        attributes_at 'RokPoradi'
      end

      def datum
        at 'Datum'
      end

      def datum_attributes
        attributes_at 'Datum'
      end

      def dat_upl_dph
        at 'DatUplDPH'
      end

      def dat_upl_dph_attributes
        attributes_at 'DatUplDPH'
      end

      def castka
        at 'Castka'
      end

      def castka_attributes
        attributes_at 'Castka'
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

      def zpusob_uhr_attributes
        attributes_at 'ZpusobUhr'
      end

      def platidlo
        at 'Platidlo'
      end

      def platidlo_attributes
        attributes_at 'Platidlo'
      end

      def seznam_pd_uhrad
        array_of_at(UhradaPduhrada, ['SeznamPDUhrad', 'Uhrada_PDUhrada'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:doklad_uhr] = doklad_uhr.to_h if has? 'DokladUhr'
        hash[:doklad_hraz] = doklad_hraz.to_h if has? 'DokladHraz'
        hash[:prijem] = prijem if has? 'Prijem'
        hash[:prijem_attributes] = prijem_attributes if has? 'Prijem'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:rok_poradi] = rok_poradi if has? 'RokPoradi'
        hash[:rok_poradi_attributes] = rok_poradi_attributes if has? 'RokPoradi'
        hash[:datum] = datum if has? 'Datum'
        hash[:datum_attributes] = datum_attributes if has? 'Datum'
        hash[:dat_upl_dph] = dat_upl_dph if has? 'DatUplDPH'
        hash[:dat_upl_dph_attributes] = dat_upl_dph_attributes if has? 'DatUplDPH'
        hash[:castka] = castka if has? 'Castka'
        hash[:castka_attributes] = castka_attributes if has? 'Castka'
        hash[:valuty_hraz] = valuty_hraz.to_h if has? 'ValutyHraz'
        hash[:valuty_uhr] = valuty_uhr.to_h if has? 'ValutyUhr'
        hash[:kurz_rozd] = kurz_rozd.to_h if has? 'KurzRozd'
        hash[:zpusob_uhr] = zpusob_uhr if has? 'ZpusobUhr'
        hash[:zpusob_uhr_attributes] = zpusob_uhr_attributes if has? 'ZpusobUhr'
        hash[:platidlo] = platidlo if has? 'Platidlo'
        hash[:platidlo_attributes] = platidlo_attributes if has? 'Platidlo'
        hash[:seznam_pd_uhrad] = seznam_pd_uhrad.map(&:to_h) if has? 'SeznamPDUhrad'

        hash
      end
    end
  end
end