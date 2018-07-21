module MoneyS3
  module Parsers
    class UcOsnovaType
      include ParserCore::BaseParser

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def saldo
        at 'Saldo'
      end

      def saldo_attributes
        attributes_at 'Saldo'
      end

      def radek
        at 'Radek'
      end

      def radek_attributes
        attributes_at 'Radek'
      end

      def uc_prev
        at 'UcPrev'
      end

      def uc_prev_attributes
        attributes_at 'UcPrev'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def radek_zkr
        at 'RadekZkr'
      end

      def radek_zkr_attributes
        attributes_at 'RadekZkr'
      end

      def druh_uctu
        at 'DruhUctu'
      end

      def druh_uctu_attributes
        attributes_at 'DruhUctu'
      end

      def ucet_typ
        at 'UcetTyp'
      end

      def ucet_typ_attributes
        attributes_at 'UcetTyp'
      end

      def ucet_pod_typ
        at 'UcetPodTyp'
      end

      def ucet_pod_typ_attributes
        attributes_at 'UcetPodTyp'
      end

      def vnitro
        at 'Vnitro'
      end

      def vnitro_attributes
        attributes_at 'Vnitro'
      end

      def technicky
        at 'Technicky'
      end

      def technicky_attributes
        attributes_at 'Technicky'
      end

      def opravky
        at 'Opravky'
      end

      def opravky_attributes
        attributes_at 'Opravky'
      end

      def druh_cin
        at 'DruhCin'
      end

      def druh_cin_attributes
        attributes_at 'DruhCin'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:saldo] = saldo if has? 'Saldo'
        hash[:saldo_attributes] = saldo_attributes if has? 'Saldo'
        hash[:radek] = radek if has? 'Radek'
        hash[:radek_attributes] = radek_attributes if has? 'Radek'
        hash[:uc_prev] = uc_prev if has? 'UcPrev'
        hash[:uc_prev_attributes] = uc_prev_attributes if has? 'UcPrev'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:radek_zkr] = radek_zkr if has? 'RadekZkr'
        hash[:radek_zkr_attributes] = radek_zkr_attributes if has? 'RadekZkr'
        hash[:druh_uctu] = druh_uctu if has? 'DruhUctu'
        hash[:druh_uctu_attributes] = druh_uctu_attributes if has? 'DruhUctu'
        hash[:ucet_typ] = ucet_typ if has? 'UcetTyp'
        hash[:ucet_typ_attributes] = ucet_typ_attributes if has? 'UcetTyp'
        hash[:ucet_pod_typ] = ucet_pod_typ if has? 'UcetPodTyp'
        hash[:ucet_pod_typ_attributes] = ucet_pod_typ_attributes if has? 'UcetPodTyp'
        hash[:vnitro] = vnitro if has? 'Vnitro'
        hash[:vnitro_attributes] = vnitro_attributes if has? 'Vnitro'
        hash[:technicky] = technicky if has? 'Technicky'
        hash[:technicky_attributes] = technicky_attributes if has? 'Technicky'
        hash[:opravky] = opravky if has? 'Opravky'
        hash[:opravky_attributes] = opravky_attributes if has? 'Opravky'
        hash[:druh_cin] = druh_cin if has? 'DruhCin'
        hash[:druh_cin_attributes] = druh_cin_attributes if has? 'DruhCin'

        hash
      end
    end
  end
end