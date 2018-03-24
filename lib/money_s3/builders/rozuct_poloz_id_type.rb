require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class RozuctPolozIDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :uc_md
          element = Ox::Element.new('UcMD')
          element << attributes[:uc_md] if attributes[:uc_md]
          root << element
        end

        if attributes.key? :uc_d
          element = Ox::Element.new('UcD')
          element << attributes[:uc_d] if attributes[:uc_d]
          root << element
        end

        if attributes.key? :castka
          element = Ox::Element.new('Castka')
          element << attributes[:castka] if attributes[:castka]
          root << element
        end

        if attributes.key? :stred
          element = Ox::Element.new('Stred')
          element << attributes[:stred] if attributes[:stred]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :par_sym
          element = Ox::Element.new('ParSym')
          element << attributes[:par_sym] if attributes[:par_sym]
          root << element
        end

        if attributes.key? :par_ico
          element = Ox::Element.new('ParICO')
          element << attributes[:par_ico] if attributes[:par_ico]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :typ_cena
          element = Ox::Element.new('TypCena')
          element << attributes[:typ_cena] if attributes[:typ_cena]
          root << element
        end

        if attributes.key? :sazba_dph
          element = Ox::Element.new('SazbaDPH')
          element << attributes[:sazba_dph] if attributes[:sazba_dph]
          root << element
        end

        root
      end
    end
  end
end