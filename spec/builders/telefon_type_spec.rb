require 'spec_helper'
require 'money_s3/with_attributes'

RSpec.describe MoneyS3::Builders::MoneyData do
  describe '::to_xml' do
    it 'outputs proper xml' do
      xml = MoneyS3::Builders::TelefonType.new({ cislo: '123' }, 'Tel').to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel>
        |  <Cislo>123</Cislo>
        |</Tel> })
    end

    it 'outputs proper xml with attributes' do
      str = WithAttributes.new('123')
      str.attributes = { type: 'cellphone' }
      xml = MoneyS3::Builders::TelefonType.new({ cislo: str }, 'Tel').to_xml.strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<Tel>
        |  <Cislo>123</Cislo>
        |</Tel> })
    end
  end
end
