require 'ox'
require 'money_s3/version'
require 'money_s3/money_data'

module MoneyS3
  def self.parse(raw)
    hash = Ox.load(raw, mode: :hash)

    if hash.key? :MoneyData
      content = hash[:MoneyData]

      raw =
        if content.is_a? Array
          content.last
        else
          content
        end
      MoneyData.new(raw)
    end
  end
end
