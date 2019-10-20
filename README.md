# MoneyS3

This gem allows to parse and build any Money S3 entity defined in theirs XML schemas.

This gem allows to parse and build any Money S3 entity defined in theirs XML schemas. All the names and structure are preserved as in the original definitions which can be found in [my repo](https://github.com/Masa331/money_xsd)

## Usage

I didn't have much time to write docs yet. However this gem work exactly the same as [Pohoda gem](https://github.com/Masa331/pohoda)

### Parsing a XML

tbd

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


## Changelog

### 20.10.2019

Updated gem with new schemas from Money S3 19.603

Premysl Donat
