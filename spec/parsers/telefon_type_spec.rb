require 'spec_helper'

RSpec.describe MoneyS3::Parsers::TelefonType do
  describe '#pred' do
    it 'returns content of <Pred/> element' do
      raw = File.read('./spec/fixtures/telefone_type.xml')
      ox = Ox.load(raw).locate('Tel').first
      parsed = MoneyS3::Parsers::TelefonType.new(ox)

      expect(parsed.pred).to eq '+420'
    end
  end

  describe '#cislo' do
    it "returns content of <Cislo/> element with it's attributes" do
      raw = File.read('./spec/fixtures/telefone_type.xml')
      ox = Ox.load(raw).locate('Tel').first
      parsed = MoneyS3::Parsers::TelefonType.new(ox)

      expect(parsed.cislo).to eq '111222333'
      expect(parsed.cislo.attributes).to eq(type: 'cellphone')
    end
  end
end
