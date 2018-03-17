require 'money_s3/builders/base_builder'
require 'money_s3/builders/zamestnanec_type'
require 'money_s3/builders/nepritomnost_type'
require 'money_s3/builders/mz_priplatek'

module MoneyS3
  module Builders
    class MzdaType
      include BaseBuilder

      attr_accessor :mesic, :rok, :prac_dnu, :prac_hod, :odpr_dnu, :odpr_hod, :odpr_sv_dnu, :odpr_sv_hod, :zamestnanec, :seznam_nepritomnosti, :seznam_mz_priplatku

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Mesic') << mesic) if mesic
        root << (Ox::Element.new('Rok') << rok) if rok
        root << (Ox::Element.new('PracDnu') << prac_dnu) if prac_dnu
        root << (Ox::Element.new('PracHod') << prac_hod) if prac_hod
        root << (Ox::Element.new('OdprDnu') << odpr_dnu) if odpr_dnu
        root << (Ox::Element.new('OdprHod') << odpr_hod) if odpr_hod
        root << (Ox::Element.new('OdprSvDnu') << odpr_sv_dnu) if odpr_sv_dnu
        root << (Ox::Element.new('OdprSvHod') << odpr_sv_hod) if odpr_sv_hod
        root << ZamestnanecType.new(zamestnanec, 'Zamestnanec').builder if zamestnanec

        if seznam_nepritomnosti
          element = Ox::Element.new('SeznamNepritomnosti')
          seznam_nepritomnosti.each { |i| element << NepritomnostType.new(i, 'Nepritomnost').builder }
          root << element
        end

        if seznam_mz_priplatku
          element = Ox::Element.new('SeznamMzPriplatku')
          seznam_mz_priplatku.each { |i| element << MzPriplatek.new(i, 'MzPriplatek').builder }
          root << element
        end

        root
      end
    end
  end
end