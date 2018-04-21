module MoneyS3
  module Parsers
    class RozuctPolozUDType
      include BaseParser

      def popis
        at 'Popis'
      end

      def uc_md
        at 'UcMD'
      end

      def uc_d
        at 'UcD'
      end

      def pohyb
        at 'Pohyb'
      end

      def castka
        at 'Castka'
      end

      def stred
        at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def par_sym
        at 'ParSym'
      end

      def var_sym
        at 'VarSym'
      end

      def par_ico
        at 'ParICO'
      end

      def ico
        at 'ICO'
      end

      def adresa
        submodel_at(FirmaType, 'Adresa')
      end

      def pozn
        at 'Pozn'
      end

      def typ_cena
        at 'TypCena'
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:popis] = popis if has? 'Popis'
        hash[:uc_md] = uc_md if has? 'UcMD'
        hash[:uc_d] = uc_d if has? 'UcD'
        hash[:pohyb] = pohyb if has? 'Pohyb'
        hash[:castka] = castka if has? 'Castka'
        hash[:stred] = stred if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:par_ico] = par_ico if has? 'ParICO'
        hash[:ico] = ico if has? 'ICO'
        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:typ_cena] = typ_cena if has? 'TypCena'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'

        hash
      end
    end
  end
end