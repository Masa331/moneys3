require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'
require 'money_s3/builders/nepritomnost_type'
require 'money_s3/builders/mz_priplatek'

module MoneyS3
  module Builders
    class MzdaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mesic
          element = Ox::Element.new('Mesic')
          element << attributes[:mesic] if attributes[:mesic]
          root << element
        end

        if attributes.key? :rok
          element = Ox::Element.new('Rok')
          element << attributes[:rok] if attributes[:rok]
          root << element
        end

        if attributes.key? :prac_dnu
          element = Ox::Element.new('PracDnu')
          element << attributes[:prac_dnu] if attributes[:prac_dnu]
          root << element
        end

        if attributes.key? :prac_hod
          element = Ox::Element.new('PracHod')
          element << attributes[:prac_hod] if attributes[:prac_hod]
          root << element
        end

        if attributes.key? :odpr_dnu
          element = Ox::Element.new('OdprDnu')
          element << attributes[:odpr_dnu] if attributes[:odpr_dnu]
          root << element
        end

        if attributes.key? :odpr_hod
          element = Ox::Element.new('OdprHod')
          element << attributes[:odpr_hod] if attributes[:odpr_hod]
          root << element
        end

        if attributes.key? :odpr_sv_dnu
          element = Ox::Element.new('OdprSvDnu')
          element << attributes[:odpr_sv_dnu] if attributes[:odpr_sv_dnu]
          root << element
        end

        if attributes.key? :odpr_sv_hod
          element = Ox::Element.new('OdprSvHod')
          element << attributes[:odpr_sv_hod] if attributes[:odpr_sv_hod]
          root << element
        end

        if attributes.key? :zamestnanec
          root << ZamestnanecType.new(attributes[:zamestnanec], 'Zamestnanec').builder
        end

        if attributes.key? :seznam_nepritomnosti
          element = Ox::Element.new('SeznamNepritomnosti')
          attributes[:seznam_nepritomnosti].each { |i| element << NepritomnostType.new(i, 'Nepritomnost').builder }
          root << element
        end

        if attributes.key? :seznam_mz_priplatku
          element = Ox::Element.new('SeznamMzPriplatku')
          attributes[:seznam_mz_priplatku].each { |i| element << MzPriplatek.new(i, 'MzPriplatek').builder }
          root << element
        end

        root
      end
    end
  end
end