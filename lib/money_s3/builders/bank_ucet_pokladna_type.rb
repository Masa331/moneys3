require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class BankUcetPokladnaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :uc_pokl
          element = Ox::Element.new('UcPokl')
          element << attributes[:uc_pokl] if attributes[:uc_pokl]
          root << element
        end

        if attributes.key? :poc_stav
          element = Ox::Element.new('PocStav')
          element << attributes[:poc_stav] if attributes[:poc_stav]
          root << element
        end

        if attributes.key? :mena
          element = Ox::Element.new('Mena')
          element << attributes[:mena] if attributes[:mena]
          root << element
        end

        if attributes.key? :b_mena
          element = Ox::Element.new('BMena')
          element << attributes[:b_mena] if attributes[:b_mena]
          root << element
        end

        if attributes.key? :ps_kurz
          element = Ox::Element.new('PSKurz')
          element << attributes[:ps_kurz] if attributes[:ps_kurz]
          root << element
        end

        if attributes.key? :ps_mnozstvi
          element = Ox::Element.new('PSMnozstvi')
          element << attributes[:ps_mnozstvi] if attributes[:ps_mnozstvi]
          root << element
        end

        if attributes.key? :prim_ucet
          element = Ox::Element.new('PrimUcet')
          element << attributes[:prim_ucet] if attributes[:prim_ucet]
          root << element
        end

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :b_kod
          element = Ox::Element.new('BKod')
          element << attributes[:b_kod] if attributes[:b_kod]
          root << element
        end

        if attributes.key? :b_nazev
          element = Ox::Element.new('BNazev')
          element << attributes[:b_nazev] if attributes[:b_nazev]
          root << element
        end

        if attributes.key? :b_zkrat
          element = Ox::Element.new('BZkrat')
          element << attributes[:b_zkrat] if attributes[:b_zkrat]
          root << element
        end

        if attributes.key? :iban
          element = Ox::Element.new('IBAN')
          element << attributes[:iban] if attributes[:iban]
          root << element
        end

        if attributes.key? :swift
          element = Ox::Element.new('SWIFT')
          element << attributes[:swift] if attributes[:swift]
          root << element
        end

        if attributes.key? :uver
          element = Ox::Element.new('Uver')
          element << attributes[:uver] if attributes[:uver]
          root << element
        end

        if attributes.key? :hbid
          element = Ox::Element.new('HBID')
          element << attributes[:hbid] if attributes[:hbid]
          root << element
        end

        if attributes.key? :hb_nazev
          element = Ox::Element.new('HBNazev')
          element << attributes[:hb_nazev] if attributes[:hb_nazev]
          root << element
        end

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :typ_prijem
          element = Ox::Element.new('TypPrijem')
          element << attributes[:typ_prijem] if attributes[:typ_prijem]
          root << element
        end

        if attributes.key? :typ_vydej
          element = Ox::Element.new('TypVydej')
          element << attributes[:typ_vydej] if attributes[:typ_vydej]
          root << element
        end

        if attributes.key? :pokladni
          element = Ox::Element.new('Pokladni')
          element << attributes[:pokladni] if attributes[:pokladni]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        root
      end
    end
  end
end