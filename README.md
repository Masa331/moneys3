# MoneyS3

This gem allows to parse and build any Money S3 entity defined in theirs XML schemas. All the names and structure are preserved as in the original definitions which can be found [here](https://github.com/Masa331/money_xsd). This gem also includes few utilities for fast and easy XML generation.

## Usage

### Parsing a XML

I didn't have time to write docs yet. However parsing works exactly the same as in [Pohoda gem](https://github.com/Masa331/pohoda)

### Building a XML

To build a Money S3 XML you need a hash with same structure you get from calling `#to_h` on parsed xml:

```ruby
hash = { seznam_fakt_vyd: [{ doklad: '123' }] }
MoneyS3.build(hash)
```

it returns a string like this:
```xml
<?xml version=\"1.0\"?>
<MoneyData>
  <SeznamFaktVyd>
    <FaktVyd>
      <Doklad>123</Doklad>
    </FaktVyd>
  </SeznamFaktVyd>
</MoneyData>
```

Building works also exactly the same as in [Pohoda gem](https://github.com/Masa331/pohoda)

### Utilities

#### `MoneyS3::Utils::BankStatements` class

Generates XML with bank movements for importing into Money S3.

Instantiate `MoneyS3::Utils::BankStatements` with hash containing statements config:
```
config = {
  my_bank_account_id: 'BAN', # Czech: zkratka bankovniho uctu
  credit_transactions_rule: 'BP001', # Czech: predkontace pro prijmy
  debit_transactions_rule: 'BV001', # Czech: predkontace pro vydaje
  credit_transactions_vat_rule: '19Ř00U', # Czech: cleneni dph pro prijmy
  debit_transactions_vat_rule: '19Ř00P', # Czech: cleneni dph pro vydaje
  credit_transactions_series: 'BPrr', # Czech: ciselna rada prijmovych bankovnich dokladu
  debit_transactions_series: 'BVrr' # Czech: ciselna rada vydajovych bankovnich dokladu
}
generator = MoneyS3::Utils::BankStatements.new(config)
```

Then call `#to_xml` on the generator and pass it an array containing hashes with movement data:
```
transactions = [
  { :date => #<Date: 2019-12-05 ((2458823j,0s,0n),+0s,2299161j)>,
    :transaction_id => "121205SI201442",
    :my_bank_account_id => "ACC1", # if given it overwrites the one from configuration
    :amount => 8500.0,
    :statement_id => "012/00001",
    :variable_symbol => "0000112019",
    :specific_symbol => "",
    :constant_symbol => "0000000138",
    :counterparty_account => "1023706843",
    :counterparty_bank_code => "0100",
    :type => :debit, # or :credit for credit transactions
    :description => "Some description..",
    :note => "Some note.." },
    ...,
    ...
]
statements_string = generator.to_xml(transactions)
File.open("statements.xml", 'wb') { |f| f.write statements_string }
```

## Changelog

### 23.02.2020 - v2.1.0

Add utility class for bank statements generation.

### 20.10.2019

Updated gem with new schemas from Money S3 19.603

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
