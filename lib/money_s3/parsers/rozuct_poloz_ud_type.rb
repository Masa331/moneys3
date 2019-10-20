module MoneyS3
  module Parsers
    class RozuctPolozUDType
      include ParserCore::BaseParser

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def uc_md
        at 'UcMD'
      end

      def uc_md_attributes
        attributes_at 'UcMD'
      end

      def uc_d
        at 'UcD'
      end

      def uc_d_attributes
        attributes_at 'UcD'
      end

      def pohyb
        at 'Pohyb'
      end

      def pohyb_attributes
        attributes_at 'Pohyb'
      end

      def castka
        at 'Castka'
      end

      def castka_attributes
        attributes_at 'Castka'
      end

      def stred
        at 'Stred'
      end

      def stred_attributes
        attributes_at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def par_sym
        at 'ParSym'
      end

      def par_sym_attributes
        attributes_at 'ParSym'
      end

      def var_sym
        at 'VarSym'
      end

      def var_sym_attributes
        attributes_at 'VarSym'
      end

      def par_ico
        at 'ParICO'
      end

      def par_ico_attributes
        attributes_at 'ParICO'
      end

      def ico
        at 'ICO'
      end

      def ico_attributes
        attributes_at 'ICO'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def typ_cena
        at 'TypCena'
      end

      def typ_cena_attributes
        attributes_at 'TypCena'
      end

      def sazba_dph
        at 'SazbaDPH'
      end

      def sazba_dph_attributes
        attributes_at 'SazbaDPH'
      end

      def adresa
        submodel_at(FirmaType, 'Adresa')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:uc_md] = uc_md if has? 'UcMD'
        hash[:uc_md_attributes] = uc_md_attributes if has? 'UcMD'
        hash[:uc_d] = uc_d if has? 'UcD'
        hash[:uc_d_attributes] = uc_d_attributes if has? 'UcD'
        hash[:pohyb] = pohyb if has? 'Pohyb'
        hash[:pohyb_attributes] = pohyb_attributes if has? 'Pohyb'
        hash[:castka] = castka if has? 'Castka'
        hash[:castka_attributes] = castka_attributes if has? 'Castka'
        hash[:stred] = stred if has? 'Stred'
        hash[:stred_attributes] = stred_attributes if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:par_sym_attributes] = par_sym_attributes if has? 'ParSym'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:var_sym_attributes] = var_sym_attributes if has? 'VarSym'
        hash[:par_ico] = par_ico if has? 'ParICO'
        hash[:par_ico_attributes] = par_ico_attributes if has? 'ParICO'
        hash[:ico] = ico if has? 'ICO'
        hash[:ico_attributes] = ico_attributes if has? 'ICO'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:typ_cena] = typ_cena if has? 'TypCena'
        hash[:typ_cena_attributes] = typ_cena_attributes if has? 'TypCena'
        hash[:sazba_dph] = sazba_dph if has? 'SazbaDPH'
        hash[:sazba_dph_attributes] = sazba_dph_attributes if has? 'SazbaDPH'
        hash[:adresa] = adresa.to_h if has? 'Adresa'

        hash
      end
    end
  end
end