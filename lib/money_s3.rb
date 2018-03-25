require 'ox'
require 'money_s3/parsers/money_data'
require 'money_s3/builders/money_data'
require 'money_s3/with_attributes'

module MoneyS3
  def self.parse(raw)
    parsed = Ox.load(raw)
    content = parsed.locate('MoneyData').first

    Parsers::MoneyData.new(content)
  end

  def self.build(data)
    Builders::MoneyData.new('MoneyData', data).to_xml
  end
end
