require 'spec_helper'

RSpec.describe MoneyS3::Builders::MoneyData do
  describe '::to_xml' do
    it 'outputs proper xml' do
      xml = MoneyS3::Builders::MoneyData.new({ seznam_fakt_vyd: { fakt_vyd: [{ doklad: '123' }] } }, 'MoneyData').to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<MoneyData>
        |  <SeznamFaktVyd>
        |    <FaktVyd>
        |      <Doklad>123</Doklad>
        |    </FaktVyd>
        |  </SeznamFaktVyd>
        |</MoneyData> })
    end
  end
end
