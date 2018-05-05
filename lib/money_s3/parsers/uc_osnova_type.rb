module MoneyS3
  module Parsers
    class UcOsnovaType
      include ParserCore::BaseParser

      def ucet
        at 'Ucet'
      end

      def nazev
        at 'Nazev'
      end

      def typ
        at 'Typ'
      end

      def saldo
        at 'Saldo'
      end

      def radek
        at 'Radek'
      end

      def uc_prev
        at 'UcPrev'
      end

      def pozn
        at 'Pozn'
      end

      def radek_zkr
        at 'RadekZkr'
      end

      def druh_uctu
        at 'DruhUctu'
      end

      def ucet_typ
        at 'UcetTyp'
      end

      def ucet_pod_typ
        at 'UcetPodTyp'
      end

      def vnitro
        at 'Vnitro'
      end

      def technicky
        at 'Technicky'
      end

      def opravky
        at 'Opravky'
      end

      def druh_cin
        at 'DruhCin'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:ucet] = ucet if has? 'Ucet'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:typ] = typ if has? 'Typ'
        hash[:saldo] = saldo if has? 'Saldo'
        hash[:radek] = radek if has? 'Radek'
        hash[:uc_prev] = uc_prev if has? 'UcPrev'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:radek_zkr] = radek_zkr if has? 'RadekZkr'
        hash[:druh_uctu] = druh_uctu if has? 'DruhUctu'
        hash[:ucet_typ] = ucet_typ if has? 'UcetTyp'
        hash[:ucet_pod_typ] = ucet_pod_typ if has? 'UcetPodTyp'
        hash[:vnitro] = vnitro if has? 'Vnitro'
        hash[:technicky] = technicky if has? 'Technicky'
        hash[:opravky] = opravky if has? 'Opravky'
        hash[:druh_cin] = druh_cin if has? 'DruhCin'

        hash
      end
    end
  end
end